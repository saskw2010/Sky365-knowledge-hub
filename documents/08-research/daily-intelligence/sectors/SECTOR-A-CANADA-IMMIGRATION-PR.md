# Sector A — Canada Immigration & Permanent Residence

**Status:** Approved operating specification  
**Parent system:** `DAILY-SECTOR-INTELLIGENCE-SYSTEM.md`  
**Cadence:** Evaluated inside the single 08:00 Asia/Kuwait daily intelligence run  
**Primary decision question:**

> What is the closest realistic executable pathway to Canadian permanent residence today, and what single action most increases its probability?

---

## 1. Governance

This file defines the canonical item list, evidence rules, decision outputs, and personal controls for the Canada sector.

Rules:

1. Do not create a separate principal automation for a new Canada topic.
2. Route the topic to the most appropriate item below.
3. Add a new item only when the topic has a distinct decision question, source set, and trigger.
4. Assign one canonical owner item to overlapping developments and reference cross-item impacts.
5. Check official sources broadly, but perform deep analysis only when a material change or viable family pathway exists.
6. Never convert generic immigration news into an action unless it changes eligibility, probability, cost, timing, risk, or required evidence.

---

## 2. Permanent Safaa baseline

- Active BC PNP registration: **BCSR-26-09174**.
- Registration date: **2026-04-03**.
- Valid until: **2027-04-03**.
- Location: Victoria / outside Metro Vancouver.
- Current occupation: **NOC 33103 — Pharmacy Assistant**.
- Working BC PNP score scenarios: approximately **135–136**, pending exact component validation.
- Current employment baseline: Heart Pharmacy full-time, plus Rexall Saturday work where applicable.
- Canadian experience and CEC-hour calculations must be validated from actual dates, hours, leave, payroll and eligibility rules.
- Never conflate **NOC 33103 Pharmacy Assistants** with **NOC 31120 Pharmacists**.
- Never mark a score, hour total, permit condition, credential, or family-point claim as confirmed without evidence.

---

## 3. Item architecture

## A1 — Federal Express Entry and IRCC

### Monitor

- Express Entry invitation rounds.
- Category-based selection.
- Canadian Experience Class.
- Federal Skilled Worker Program.
- French-language category.
- Healthcare and social-services category.
- CRS methodology and tie-breaking changes.
- Proof-of-funds changes.
- NOC classification or interpretation.
- Language-test acceptance and validity.
- Medical, police-certificate and biometrics policy.
- Work permit and PGWP policy.
- Family sponsorship and Parents and Grandparents Program.
- Temporary public policies, pilots and transition programs.

### Required decision output

- Does Safaa qualify today?
- Is the profile competitive under the latest verified pattern?
- Which missing requirement has the highest marginal value?
- Does French, English, additional experience, spouse factors or occupation change produce the greatest realistic gain?

---

## A2 — British Columbia PNP

### Official checks every run

- WelcomeBC Invitations to Apply.
- BC PNP News.
- Main stream and program pages.
- BC PNP Online portal notices.
- Official guides, technical guides, occupation tables and PDFs.
- Government of British Columbia newsroom and factsheets.

### Monitor

- Skills Immigration draws.
- Entrepreneur Immigration draws.
- Care, Build and Innovate categories.
- Core economic objective invitations.
- Targeted NOCs.
- Minimum scores.
- Wage and job-offer thresholds.
- Licensing and credential conditions.
- Regional and employer conditions.
- Allocations, fees and processing.
- Registration validity and portal changes.
- Silent changes to tables, footnotes and definitions.

### Mandatory output for every new draw

- Exact draw date.
- Official page update date.
- Stream or economic objective.
- Exact NOCs.
- Minimum score.
- Invitations issued.
- Wage, licensing, credential and regional requirements.
- Comparison with the previous comparable draw.
- Explicit statement on whether NOC 33103 was included.
- Direct impact on Safaa.
- Required portal, employer or evidence action.

---

## A3 — Other provinces and community pathways

### Primary tier

Programs with current or plausible direct relevance to Safaa or the family should receive full impact analysis.

Initial candidates:

- Alberta AAIP.
- Ontario OINP.
- Atlantic Immigration Program.
- Rural and Francophone community pathways.
- Selected Vancouver Island or BC-adjacent community opportunities when applicable.

### Secondary tier

Programs that may become relevant after a job offer, French improvement, occupation change or relocation.

Initial candidates:

- Saskatchewan SINP.
- Manitoba MPNP.
- Nova Scotia.
- New Brunswick.
- Prince Edward Island.
- Newfoundland and Labrador.

### Watch-only tier

Check official updates, but do not produce daily generic commentary unless a material trigger occurs.

### Deep-analysis triggers

- New draw.
- Stream opening or reopening.
- NOC or occupation-list change.
- Reduced score or changed ranking logic.
- New employer or job-offer route.
- New French advantage.
- New pathway that materially changes family probability, cost or timing.

---

## A4 — Language strategy and testing diagnostics

### Monitor

- IELTS General Training.
- CELPIP General.
- PTE Core.
- TEF Canada.
- TCF Canada.
- Paper-based versus computer-based availability.
- Test-format and scoring changes.
- Score-conversion changes.
- Test validity and booking constraints.
- Official preparation and retake policies.

### Safaa diagnostic model

Distinguish among:

- Actual language weakness.
- Test-format mismatch.
- Computer-interface anxiety.
- Timing-management failure.
- Submission or platform incident.
- Listening-to-writing integration difficulty.
- Inconsistent preparation method.

### Decision options

- Continue current test.
- Switch provider.
- Return to a previously validated pathway.
- Prioritize French.
- Pause repeated testing and perform a controlled diagnostic.

### Required output

- Current verified score.
- Target score and immigration value.
- Probability of improvement.
- Expected cost and number of attempts.
- Best next test action.

---

## A5 — Safaa Eligibility Engine

This is the core personal decision engine for the Canada sector.

### Validate every material change

- CEC qualifying start date.
- Qualifying hours and maximum count rules.
- Full-time and part-time aggregation.
- Multiple-employer aggregation.
- Leave, interruption and continuity.
- Actual NOC duties versus job title.
- Employer letters and contract quality.
- Pay slips, T4, NOA and payroll support.
- Wage progression.
- Employer support strength.
- Work-permit restrictions.
- Medical examination and amendment status.
- Current legal status and travel implications.
- Exact CRS components.
- Exact BC PNP components.
- Confirmed, probable, disputed and missing components.

### Required scenario table

For every active scenario include:

| Field | Output |
|---|---|
| Scenario ID | Stable name |
| Eligibility today | Yes / no / conditional |
| Verified score | Exact confirmed points |
| Estimated score | Assumption-based points |
| Missing evidence | Documents or facts needed |
| Main dependency | Language / employer / NOC / licensing / location |
| Probability band | High / medium / low with confidence |
| Next action | One concrete action |

---

## A6 — Occupation and career-path strategy

### Monitor and compare

- NOC 33103 Pharmacy Assistant.
- NOC 31120 Pharmacist after licensing.
- Pharmacy Technician pathways.
- Healthcare Authority opportunities.
- Public-sector healthcare opportunities.
- ECE or child-care pathways.
- Other regulated and non-regulated occupations with immigration value.
- Wage-growth opportunities.
- Employer-supported routes.
- Category-based eligibility effects.

### Required comparison

For every serious occupation pathway assess:

- Current eligibility.
- Required licensing or training.
- Time and cost.
- Canadian and foreign experience recognition.
- Wage impact.
- Immigration-category impact.
- Employer dependency.
- Stability risk.
- Whether the occupation change improves immigration but harms income or family stability.

---

## A7 — Licensing and professional mobility

### Monitor

- Pharmacist licensing.
- Pharmacy Technician licensing.
- PEBC requirements.
- Provincial regulatory requirements.
- Bridging programs.
- ECE licensing.
- Healthcare authorization and work-permit implications.
- Recognition of Egyptian, Kuwaiti and Canadian experience.
- Online or part-time recognized programs.

### Required output

- Regulator.
- Recognition status.
- Exams or education required.
- Cost.
- Duration.
- Earliest realistic completion.
- Immigration value created.
- Employment value created.
- Main failure risk.

---

## A8 — Family immigration leverage

### Safaa

- Principal-applicant position.
- Spouse points and evidence.
- Dependants and accompanying decisions.

### Reem

- Work permit status.
- Independent PR options.
- Whether PR or citizenship creates federal or provincial relative benefits.
- Direct versus indirect benefit to Safaa.

### Mostafa

- Spouse language.
- Education and ECA.
- Work history and possible contribution.
- Accompanying versus non-accompanying implications.

### Family system

- Sponsorship possibilities.
- Province-specific relative points.
- Residence-location evidence.
- Sequencing effects across children and parents.

### Rule

Never assume that a family relationship adds points. Confirm the exact program, relationship, status, residence condition and evidence.

---

## A9 — Status, permits, documents and deadline-risk ledger

Maintain one permanent ledger covering:

- Work permits.
- PGWP.
- TRV and eTA.
- Passports.
- Medicals.
- Language tests.
- ECA and WES reports.
- BC PNP registration.
- Express Entry profile.
- Employer letters.
- Police certificates.
- Licensing files.
- Maintained status.
- Pending amendments.
- Travel risks.

### Ledger fields

| Field | Required value |
|---|---|
| Document or status | Name |
| Holder | Person |
| Issue date | Exact date |
| Expiry date | Exact date |
| Renewal lead time | Recommended days |
| Dependency | What it affects |
| Risk | Low / medium / high |
| Action | Required next step |
| Evidence | File or official confirmation |

### Alert thresholds

- Critical: expired, invalid, contradictory or blocking.
- High: less than 60 days where action is required.
- Medium: less than 120 days.
- Monitor: more than 120 days.

---

## A10 — Application operations and processing intelligence

### Monitor

- Official processing times.
- Portal incidents.
- Application-return reasons.
- Duplicate or incorrect applications.
- Webform and reconsideration routes.
- Amendments.
- Waiver or correction requests.
- GCMS notes when justified.
- Escalation routes.
- Travel during pending applications.

### Decision question

> Wait, correct, amend, withdraw, reapply, escalate or request records?

### Required output

- Exact procedural problem.
- Official rule or operational evidence.
- Risk of waiting.
- Risk of duplicate filing.
- Best procedural action.
- Required documents.
- Deadline.

---

## A11 — Community and geographic strategy

### Initial locations

- Victoria.
- Duncan.
- Nanaimo.
- Campbell River.
- Port Alberni.
- Other Vancouver Island communities when material.
- Relevant communities outside Metro Vancouver.

### Compare

- Immigration advantage.
- Employer availability.
- Pharmacy and healthcare demand.
- Wage.
- Rent and living costs.
- Transport.
- Education and family services.
- Community-program eligibility.
- Relocation cost.
- Evidence required to prove genuine residence and work.

### Rule

Do not recommend relocation for nominal points alone. The move must improve the total system: immigration probability, employment, affordability and family stability.

---

## A12 — Cost, probability and time-to-PR model

For every serious pathway include:

- Eligibility today.
- Earliest eligibility date.
- Estimated invitation horizon.
- Estimated PR horizon.
- Probability band.
- Confidence level.
- Direct application fees.
- Language-test costs.
- Licensing and education costs.
- Relocation costs.
- Lost-income or opportunity costs.
- Employer dependency.
- French dependency.
- Licensing dependency.
- Geographic dependency.
- Main rejection or failure risk.
- Reversal trigger.

### Priority formula

A pathway is preferred when it combines:

- Real eligibility.
- Shorter execution time.
- Higher probability.
- Lower irreversible cost.
- Lower employer dependency.
- Stronger family stability.

A high theoretical score with weak evidence or unrealistic dependencies must not outrank a lower-scoring executable pathway.

---

## 4. Daily output contract

The Canada section of the daily report must contain:

1. **Canada answer in one sentence** — closest realistic pathway and highest-value next action.
2. **Urgent changes** — new draws, deadlines, status risks or procedural problems.
3. **Safaa eligibility dashboard** — confirmed versus assumed.
4. **Pathway comparison** — only active serious pathways.
5. **Language and occupation decision** — when materially changed.
6. **Document and deadline alerts**.
7. **Geographic or family leverage changes**.
8. **Action list** — owner, urgency and trigger.
9. **No-change verification** — last official draws and pages checked.

---

## 5. Evidence policy

### Tier 1

- IRCC and Canada.ca.
- Official provincial immigration departments.
- Official regulatory colleges.
- Official language-test providers.
- WES and recognized credential authorities.
- Official employer and payroll evidence.

### Tier 2

- Established specialist immigration reporting used for discovery and interpretation.

### Tier 3

- Consultancy blogs, social media, forums and community posts used only to identify leads.

### Rules

- Official sources override commentary.
- Separate event date, publication date, page-update date and discovery date.
- Label inference.
- Do not infer eligibility from occupation title alone.
- Do not infer completion from silence or elapsed time.

---

## 6. Quality gates

Before publishing verify:

- NOC 33103 and NOC 31120 remain distinct.
- CEC hours are based on qualifying rules and evidence.
- CRS and BC PNP points identify assumptions.
- Every recommended pathway has a cost, timing and probability view.
- Every action has an owner and trigger.
- No province receives generic commentary without a material event.
- No family-point claim is made without exact program authority.
- No document is marked valid without date evidence.
- The one-sentence Canada answer is executable, not motivational.

---

## 7. Current strategic hierarchy

Until evidence changes, use this working hierarchy:

1. **Primary:** BC / current employer / Safaa active registration and federal eligibility.
2. **Parallel accelerator:** English improvement and French development based on measured return.
3. **Occupation leverage:** stronger healthcare, licensing or public-authority route only when time and cost are justified.
4. **Secondary provinces:** activate only on real fit, not generic openness.
5. **Family leverage:** use only when legal status and exact program rules create a verified advantage.

This hierarchy is a working decision structure, not a legal conclusion. It must be revised when official evidence changes.
