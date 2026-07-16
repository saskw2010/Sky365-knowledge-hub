from __future__ import annotations

import html
import os
import re
import shutil
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "_site"
SKIP_DIRS = {".git", ".github", "_site", "scripts", "node_modules"}


def md_inline(text: str) -> str:
    text = html.escape(text, quote=False)
    text = re.sub(r"`([^`]+)`", r"<code>\1</code>", text)
    text = re.sub(r"\*\*([^*]+)\*\*", r"<strong>\1</strong>", text)
    text = re.sub(r"\*([^*]+)\*", r"<em>\1</em>", text)
    text = re.sub(r"\[([^\]]+)\]\(([^)]+)\)", lambda m: f'<a href="{rewrite_link(m.group(2))}">{m.group(1)}</a>', text)
    return text


def rewrite_link(link: str) -> str:
    if link.startswith(("http://", "https://", "mailto:", "#")):
        return link
    clean, sep, anchor = link.partition("#")
    if clean.lower().endswith(".md"):
        clean = clean[:-3] + ".html"
    return clean + (sep + anchor if sep else "")


def markdown_to_html(source: str, title: str, source_path: str) -> str:
    lines = source.splitlines()
    body: list[str] = []
    in_code = False
    code_lang = ""
    list_open = False
    paragraph: list[str] = []

    def flush_paragraph() -> None:
        nonlocal paragraph
        if paragraph:
            body.append(f"<p>{md_inline(' '.join(paragraph))}</p>")
            paragraph = []

    def close_list() -> None:
        nonlocal list_open
        if list_open:
            body.append("</ul>")
            list_open = False

    for raw in lines:
        line = raw.rstrip()
        if line.startswith("```"):
            flush_paragraph(); close_list()
            if not in_code:
                in_code = True
                code_lang = line[3:].strip()
                body.append(f'<pre><code class="language-{html.escape(code_lang)}">')
            else:
                body.append("</code></pre>")
                in_code = False
            continue
        if in_code:
            body.append(html.escape(raw) + "\n")
            continue
        if not line.strip():
            flush_paragraph(); close_list(); continue
        heading = re.match(r"^(#{1,6})\s+(.*)$", line)
        if heading:
            flush_paragraph(); close_list()
            level = len(heading.group(1))
            text = heading.group(2)
            slug = re.sub(r"[^a-zA-Z0-9\u0600-\u06FF]+", "-", text).strip("-").lower()
            body.append(f'<h{level} id="{slug}">{md_inline(text)}</h{level}>')
            continue
        if line.startswith(">"):
            flush_paragraph(); close_list()
            body.append(f"<blockquote>{md_inline(line[1:].strip())}</blockquote>")
            continue
        if re.match(r"^[-*+]\s+", line):
            flush_paragraph()
            if not list_open:
                body.append("<ul>"); list_open = True
            body.append(f"<li>{md_inline(re.sub(r'^[-*+]\\s+', '', line))}</li>")
            continue
        if re.match(r"^\d+\.\s+", line):
            flush_paragraph(); close_list()
            body.append(f"<p class=\"numbered\">{md_inline(line)}</p>")
            continue
        paragraph.append(line.strip())

    flush_paragraph(); close_list()
    content = "\n".join(body)
    return f'''<!doctype html>
<html lang="ar" dir="rtl">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>{html.escape(title)} · Sky365 Knowledge Hub</title>
<link rel="stylesheet" href="{relative_asset(source_path, 'assets/docs.css')}">
<script type="module">import mermaid from 'https://cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.esm.min.mjs'; mermaid.initialize({{startOnLoad:true,theme:'dark'}});</script>
</head>
<body>
<header class="doc-top"><a href="{relative_asset(source_path, 'index.html')}">Sky365 Knowledge Hub</a><nav><a href="{relative_asset(source_path, 'docs-index.html')}">دليل المستندات</a><a href="{relative_asset(source_path, 'investment/index.html')}">Investment</a><a href="{relative_asset(source_path, 'sectors/research/README.html')}">Research</a></nav></header>
<main class="doc-shell"><aside><div class="eyebrow">CANONICAL DOCUMENT</div><h1>{html.escape(title)}</h1><p class="source">المصدر: <code>{html.escape(source_path)}</code></p></aside><article>{content}</article></main>
<footer>Mostafa Elnagar · WytSky Cloud Solutions Oy · SKY365</footer>
<script>document.querySelectorAll('pre code.language-mermaid').forEach(el=>{{const p=el.parentElement;const d=document.createElement('div');d.className='mermaid';d.textContent=el.textContent;p.replaceWith(d);}});</script>
</body></html>'''


def relative_asset(source_path: str, target: str) -> str:
    depth = len(Path(source_path).parent.parts)
    return "../" * depth + target


def page_title(text: str, fallback: str) -> str:
    for line in text.splitlines():
        m = re.match(r"^#\s+(.+)$", line.strip())
        if m:
            return m.group(1).strip()
    return fallback


def main() -> None:
    if OUT.exists():
        shutil.rmtree(OUT)
    OUT.mkdir(parents=True)

    md_pages: list[tuple[str, str]] = []
    for path in ROOT.rglob("*"):
        rel = path.relative_to(ROOT)
        if any(part in SKIP_DIRS for part in rel.parts):
            continue
        target = OUT / rel
        if path.is_dir():
            target.mkdir(parents=True, exist_ok=True)
            continue
        target.parent.mkdir(parents=True, exist_ok=True)
        if path.suffix.lower() == ".md":
            text = path.read_text(encoding="utf-8")
            title = page_title(text, path.stem.replace("-", " "))
            html_target = target.with_suffix(".html")
            html_target.write_text(markdown_to_html(text, title, rel.as_posix()), encoding="utf-8")
            md_pages.append((title, html_target.relative_to(OUT).as_posix()))
            shutil.copy2(path, target)
        else:
            shutil.copy2(path, target)

    cards = "\n".join(f'<a class="doc-card" href="{href}"><strong>{html.escape(title)}</strong><span>{href}</span></a>' for title, href in sorted(md_pages))
    index = f'''<!doctype html><html lang="ar" dir="rtl"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>دليل مستندات Sky365</title><link rel="stylesheet" href="assets/docs.css"></head><body><header class="doc-top"><a href="index.html">Sky365 Knowledge Hub</a><nav><a href="investment/">Investment</a></nav></header><main class="index-shell"><div class="eyebrow">AUTO-GENERATED HTML LIBRARY</div><h1>دليل كل المستندات</h1><p>يُنشأ تلقائيًا من جميع ملفات Markdown في كل عملية نشر.</p><section class="doc-grid">{cards}</section></main><footer>Mostafa Elnagar · WytSky Cloud Solutions Oy · SKY365</footer></body></html>'''
    (OUT / "docs-index.html").write_text(index, encoding="utf-8")
    (OUT / ".nojekyll").write_text("", encoding="utf-8")


if __name__ == "__main__":
    main()
