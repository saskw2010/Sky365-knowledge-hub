# WytSky / Sky365 Sector Hierarchy

**Purpose:** Organize the full WytSky/Sky365 portfolio as a recursive hierarchy rather than one flat repository-wide list.

## Structural rule

Use the following hierarchy everywhere:

`DOMAIN → SECTOR → SUBSECTOR → CAPABILITY / PRODUCT / PROJECT → ITEM`

A node may contain child nodes of the same shape. The system must therefore be recursive and must not assume a fixed depth.

## Level definitions

- **DOMAIN** — the broadest business or technology territory.
- **SECTOR** — a major operating area within a domain.
- **SUBSECTOR** — a coherent capability family or market specialization.
- **CAPABILITY / PRODUCT / PROJECT** — an executable or sellable unit.
- **ITEM** — a component, experiment, repository, integration, model, task, or research thread.

## Canonical top-level domains

### D01 — Platform & Enterprise Software

#### S01.1 — ERP Core
- Dynamic ERP Builder
- Dynamic Engine Runtime
- Dynamic Engine Builder
- Dynamic Engine Visualizer
- JSON Dynamic Controller
- Code Time migration
- Reports, Excel, translation, identity, CMS

#### S01.2 — Agentic Enterprise Platform
- Sky365 Agentic
- Skyverse
- Agent Hub
- MCB Builder / MCB Server
- Integration Gateway
- Digital Workforce
- Human approval and audit

#### S01.3 — Experience Surfaces
- Mascot Agent
- AI Front Door
- Omni Chat
- Omni Tools
- Omni Flow
- Omni Analytics
- Omni Memory

### D02 — AI Runtime, Models & Developer Infrastructure

#### S02.1 — Model Gateway & Routing
- OmniRoute
- Free Claude Code Proxy
- Claude Code routing
- Codex routing
- OpenCode
- Provider failover
- Prompt compression
- OpenAI / Anthropic compatibility

#### S02.2 — Local Inference
- Ollama
- LM Studio
- Vulkan/GPU offload
- Multi-GPU offload
- Model containers

#### S02.3 — Models & Training
- GLM
- Kimi
- OLMo
- Gemma
- DeepSeek
- Sky365 Tiny Model
- ERP-specialized model
- Distillation curriculum
- Hidden state and KV-cache experiments

### D03 — Knowledge, Graphs, Memory & Orchestration

#### S03.1 — Knowledge Runtime
- Semantic Layer
- Concept Graph
- Activation Graph
- Context Graph
- Execution Graph
- Per-user vector memory
- OKF

#### S03.2 — Agent Orchestration
- Staged multi-graph
- Parallel sub-agents
- Shared blackboard
- Leader election
- Debate and verification
- Recovery
- Human steering

#### S03.3 — MCP & Governance
- MCP Compatibility Lab
- Stateless migration
- Remote MCP/App Gateway
- Governor MCP
- Evidence MCP
- Verification MCP
- Scenario MCP
- Use Case MCP
- ERP Builder MCP

### D04 — Communications, Media & Content

#### S04.1 — Omni Messaging
- WhatsApp
- Email
- SMS
- Neonize
- whatsmeow
- Social inbox
- Sender identity and governance

#### S04.2 — Meeting & Podcast Intelligence
- Listener-only mode
- Podcast listen-then-speak
- Transcription
- Concept graph separation
- High Noter-like intelligence

#### S04.3 — Media Agent Studio
- VideoAgent
- HyperFrames
- LongCat-Video
- WAN video
- Talking-video
- Avatar generation
- Voice-over
- Whisper
- TTS
- Automated social content
- Build-in-public live streaming

### D05 — Commerce, Web & Federation

#### S05.1 — Commerce Network
- Commerce Data Network
- Distributed Commerce Network
- Commerce Federation Platform
- GlobalProductDB
- TenantProductDB
- Product Sharing Network
- Network Broadcast Engine

#### S05.2 — Web Platform
- External Site API V1
- Website/page/version service
- Tenant subdomains
- CMS-as-a-Service

### D06 — Education & Knowledge Products

#### S06.1 — Learning Platforms
- WytSchool
- WytSchool Brain
- Scholza
- Zaker
- WytSky Academy

#### S06.2 — AI Learning Production
- Every task becomes a lesson
- Voice-to-course
- YouTube course summarizer
- Mind maps, flows, and code infographics
- DeepSeek curriculum
- GLM curriculum
- OLMo pilot

#### S06.3 — Language & Robotics Education
- English/French learning
- Robotics and Language Center

### D07 — Healthcare & Medical Technology

#### S07.1 — Clinical Systems
- WytSkyMed
- HealthyHomeKW
- Remote Health Monitoring
- Clinical workflow integrations

#### S07.2 — Radiology
- Structured radiology reporting
- Templates and newsletter
- Dr Ahmed Radiology repository

#### S07.3 — Healthcare Commercial Use Cases
- Healthcare demos
- Medical-sector workflows
- Medical-sector job scenarios

### D08 — Industry Verticals

#### S08.1 — Logistics, Delivery & Fleet
- Salogi
- Bitoko
- Delivery
- Fleet
- Warehousing
- E-signature
- Saudi Transport Authority trip integration

#### S08.2 — Agriculture & Drones
- WytSky AgroTech
- Agriculture
- Skydrons
- Robotics and drones

#### S08.3 — Migration & Mobility
- WytSky Migrant Hub
- Immigration intelligence
- Canada / BC PNP
- Europe mobility

#### S08.4 — Publishing & Research
- SkyInk
- Books and guides
- Scientific research
- Da‘wa content

### D09 — Commercial Strategy, Markets & Partnerships

#### S09.1 — Revenue & Offers
- B2B offers
- Enterprise AI transformation services
- Productized integration packages
- Paid pilots

#### S09.2 — Markets
- Kuwait
- Saudi Arabia
- Qatar
- Abu Dhabi / UAE
- Europe
- Canada

#### S09.3 — Partnerships & Capital
- Partner/channel model
- Lindo.ai
- StartupGPT and incubators
- Fundraising linked to validated sales

### D10 — Architecture, Governance & Repository Intelligence

#### S10.1 — Reference Architecture
- Core Foundation
- Integration and Orchestration
- Knowledge and Context
- Execution and Tools
- AI Agents Runtime
- Experience and Interaction
- Marketplace
- Vertical Systems

#### S10.2 — Governance & Observability
- Human Review
- Policy
- Audit Intelligence
- Observability
- Evidence and Verification

#### S10.3 — Repository Intelligence
- all-agentic-architectures
- Repository audit
- Repository dashboard
- Consolidation
- Archive review

## Governance rules

1. Every item must have exactly one canonical parent path.
2. Cross-sector relevance is represented by tags or relationships, not duplication.
3. Products, reusable capabilities, experiments, repositories, and market initiatives must never share the same type implicitly.
4. A new item is first placed in the correct domain/sector/subsector before status or priority is assigned.
5. New subsectors may be created, but new top-level domains require explicit architectural review.
6. The JSON registry is the machine-readable source of truth; this document is the human-readable navigation map.
