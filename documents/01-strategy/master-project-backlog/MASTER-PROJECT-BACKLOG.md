# WytSky / Sky365 Master Project Backlog

**Status:** Living strategic register  
**Created:** 2026-08-02  
**Owner:** WytSky Cloud AI Solutions  
**Review cadence:** Monthly  
**Canonical data file:** `master-project-backlog.json`

## Purpose

This register preserves every meaningful WytSky/Sky365 product, platform, component, experiment, repository, market initiative, research thread, and strategic idea—whether active, paused, unfinished, experimental, or only being watched.

The backlog is not a delivery roadmap. It is the institutional memory from which roadmaps, research plans, consolidation decisions, and product bets are derived.

## Status vocabulary

- `ACTIVE` — currently being built, sold, operated, or validated.
- `NEXT` — approved candidate for near-term execution.
- `WATCH` — monitor external progress or internal need.
- `PAUSED` — intentionally stopped without deletion.
- `RESEARCH` — study, benchmark, or prototype required.
- `MERGE` — should become part of a larger product or capability.
- `DROP_CANDIDATE` — potentially obsolete or distracting; requires an explicit decision before removal.

## Monthly review rules

1. Never remove an item merely because work has already started.
2. Record what changed since the prior review.
3. Identify duplicate names and overlapping product theses.
4. Prefer a reusable Sky365 capability over unnecessary standalone products.
5. Surface no more than three decisions requiring executive attention each month.
6. Flag projects that create material distraction without buyer evidence, architectural leverage, or strategic learning value.
7. Any newly mentioned project, repository, model, platform, integration, or market idea is added to this register before prioritization.

## Portfolio map

### 1. Core platform and products

Sky365 ERP; Sky365 SaaS; Sky365 AI; Sky365 Agentic; Sky365 Agentic Enterprise Platform; Skyverse; Sky365 Engine AI; SkyCodeGenerator; Dynamic ERP Builder; Dynamic Engine Runtime; Dynamic Engine Builder; Dynamic Engine Visualizer; JSON Dynamic Controller; MCB Builder; MCB Server; Agent Hub; Integration Gateway; StudioAI; Sky365AnythingLLM; OpenAI-compatible local API; Anthropic-compatible local API; Code Time migration; external site API V1 by tenant hash; CMS Studio; Salogi Admin; report designer and generator; embedded Excel; translation engine.

### 2. Agents and experience

Mascot Agent; AI Front Door; listener-only meeting mode; podcast listen-then-speak mode; transcript and concept graph separation; High Noter-like meeting intelligence; Omni Chat; Omni Social; Omni Tools; Omni Flow; Omni Analytics; Omni Memory; Digital Workforce; human approval gates; central approval and audit table; LG Voucher agent use case; deterministic router; structured adapter; permission, policy, and audit trace.

### 3. Graph, MCP, orchestration, and memory

Concept Graph; Semantic Layer; Activation Graph; Context Graph; Execution Graph; staged multi-graph; dependency-based parallel sub-agents; Graph Engineering; Loop Engineering; Harness Engineering; Governor Engine; Governor MCP; Enhancement MCP; Evidence MCP; Verification MCP; Scenario MCP; Use Case MCP; ERP Builder MCP; MCP 2026 Compatibility Lab; stateless MCP migration; standards-based remote MCP/App Gateway; shared blackboard; leader election; debate and verification; recovery; human steering; OKF; Zvec comparison; per-user vector memory.

### 4. AI gateways and coding tools

OmniRoute; Free Claude Code Proxy; OpenCode; Claude Code routing; Codex routing; LiteLLM-style gateway; prompt compression; provider failover; local/free model routing; AnythingLLM Anthropic compatibility; career-ops; all-agentic-architectures repository intelligence; repository audit; repository dashboard; repository consolidation.

### 5. Local models, inference, and training

GLM-5.2; quantized GLM; compressed GLM; ternary GLM; Kimi K3 0.18B; Bonsai/Qwen; OLMo pilot; Gemma 3 27B; DeepSeek V3 local; distillation curriculum generation; hidden-state persistence; encrypted client-side KV cache; Ollama; LM Studio; Vulkan/GPU offload lab; multi-GPU offload; model containers; Sky365 Tiny model; domain-specialized ERP model.

### 6. Video, voice, and content

VideoAgent; HyperFrames; LongCat-Video; image-to-talking-video; WAN video; avatar and virtual character generation; voice-over pipeline; Whisper; TTS listener and speaker modes; podcast platform; course-from-voice; automated social content; 24-hour build-in-public live stream; mobile-and-laptop live workflow.

### 7. Omni Messaging

WhatsApp/Email/SMS unified service; Neonize; whatsmeow; multi-tenant messaging API façade; administration screens; sender screens; messaging reports; social inbox; sender identity and governance.

### 8. Commerce, websites, and federation

Commerce Data Network; Distributed Commerce Network Platform; Commerce Federation Platform; GlobalProductDB; TenantProductDB; Product Sharing Network; Network Broadcast Engine; external customer websites served from Sky365 API; website/page/version service; tenant subdomains; CMS-as-a-service.

### 9. Education and knowledge products

Scholza.com; Zaker e-learning; WytSchool; WytSchool Brain; WytSky Academy; every-task-becomes-a-lesson; voice-to-course; DeepSeek design curriculum; GLM curriculum; OLMo learning pilot; mind maps, flows, and code infographics; robotics and language center; English/French learning system; long YouTube course summarizer.

### 10. Healthcare and radiology

WytSkyMed; Remote Health Monitoring; HealthyHomeKW; structured radiology reporting; radiology templates and newsletter; Dr Ahmed Radiology X-Ray repository; healthcare use cases; delivery use cases; medical-sector job-search scenarios; structured reports and clinical workflow integrations.

### 11. Verticals and strategic initiatives

WytSky Migrant Hub; immigration intelligence; Canada and BC PNP planning; Europe mobility; WytSky AgroTech; agriculture; skydrons; robotics and drones; SkyInk; books, guides, and booklets; scientific research; da‘wa content; Salogi; Bitoko; delivery; fleet; logistics and warehousing; e-signature integration; Saudi Transport Authority trip integration.

### 12. Commercial growth and markets

WytSky Cloud AI Solutions; wytsky.com; wytskyai365.com; B2B offers; enterprise AI transformation services; partner and channel model; Qatar market entry; Abu Dhabi/UAE market entry; Saudi Arabia market entry; Kuwait market development; fundraising linked to paid pilots; Lindo.ai partnership; StartupGPT and incubators; healthcare demos; logistics demos; productized integration packages.

### 13. Reference architecture

Core Foundation; Integration and Orchestration; Knowledge and Context; Execution and Tools; AI Agents Runtime; Experience and Interaction; Marketplace; Vertical Systems; MCP layer; integrations layer; Knowledge Gateway; Intent and Dynamic Execution Planner; Knowledge Blackboard; Human Review; Memory Layer; Observability; Audit Intelligence; Evidence and Verification engines.

### 14. Diagram, visualization, and living documentation

Sky365 Visual Intelligence & Diagram Engine; Draw.io MCP integration; Mermaid provider; JSON-to-Diagram conversion; Workflow Visualizer; Concept Graph Visualizer; Architecture Generator; Sequence Diagram Generator; ER Diagram Generator; API Diagram Generator; Agent Execution Visualizer; Meeting-to-Diagram; Living Documentation; Diagram Export to Draw.io, SVG, PNG, and PDF; Code-to-Diagram; Diagram-to-Code research; reverse-engineering visualizer.

The canonical source of truth remains structured JSON, workflow definitions, concept graphs, schemas, and agent plans. Draw.io and Mermaid are generated views, not the primary storage format.

**Reference project:** `lgazo/drawio-mcp-server` is tracked as a candidate dependency and proof-of-concept source. It should not become a separate Sky365 product unless benchmark evidence proves strategic value.

## Current consolidation hypotheses

These are hypotheses for review, not final decisions:

- OmniRoute, Free Claude Code Proxy, Claude Code routing, Codex routing, provider failover, and local model routing likely belong under one **Model Gateway and Developer Runtime** capability.
- Listener Mode, podcast mode, High Noter-like intelligence, transcript storage, and concept graphs likely belong under one **Meeting and Media Intelligence** product surface.
- Concept Graph, Semantic Layer, Activation Graph, Context Graph, Execution Graph, vector memory, and OKF likely belong under one governed **Knowledge and Context Runtime**.
- VideoAgent, HyperFrames, LongCat-Video, avatar generation, voice-over, and social automation likely belong under one **Media Agent Studio**, unless a standalone buyer case is proven.
- Commerce federation concepts may be a vertical platform built on Sky365 APIs rather than a separate foundational stack.
- WytSchool, Scholza, Zaker, voice-to-course, and course summarization require a unified education product thesis to avoid fragmentation.
- Draw.io MCP, Mermaid, workflow visualization, concept-graph visualization, architecture generation, and living documentation should consolidate under one **Sky365 Visual Intelligence & Diagram Engine** capability rather than separate products.

## Initial executive warning

The portfolio contains strong architectural reuse but also substantial naming and product overlap. The principal risk is not lack of ideas; it is allowing components, experiments, and commercial products to share the same status. Every monthly review must distinguish:

1. **Sellable product**
2. **Reusable platform capability**
3. **Research experiment**
4. **Reference project or repository**
5. **Market initiative**

No item should receive implementation priority until its type is explicit.