# Security Insights Parent Charter

A deliverable of the [OpenSSF ORBIT Definitions SIG](../../CHARTER.md).

- **Technical Initiative Lead:** Eddie Knight (@eddie-knight)
- **Covered repositories:** [`ossf/security-insights`](https://github.com/ossf/security-insights), [`ossf/security-insights-spec`](https://github.com/ossf/security-insights-spec), and related tooling repositories under this initiative

## 1. Mission & Technical Scope

Security Insights defines a minimal, embeddable, machine-readable format for projects to publish security-relevant metadata (`security-insights.yml`), prioritizing simplicity, stability, and cautious incremental change.

**In scope:**

- The Security Insights specification, its schema, and its versioning
- First-party tooling and libraries for producing, validating, and consuming Security Insights data
- Interoperability with other ORBIT initiatives that consume the format (e.g., Gemara, OSPS Baseline tooling)

**Out of scope:**

- Judging or scoring the security posture the metadata describes
- General-purpose security scanning or policy enforcement (see Minder, Privateer)
- Metadata formats unrelated to project security posture

## 2. Parent Guardrails (Non-Negotiable)

These provisions bind every Security Insights repository and participant and may not be modified locally.

### 2.1 Code of Conduct

All participants are subject to the [OpenSSF Code of Conduct](https://openssf.org/community/code-of-conduct/). Maintainers must address reported violations promptly; reports involving a maintainer are escalated past that maintainer. Unresolved or serious incidents escalate to the ORBIT TSC Chair and, where appropriate, the OpenSSF CoC reporting process.

### 2.2 Intellectual Property & Licensing

Per WG charter §7: all inbound and outbound code is licensed **Apache-2.0**; documentation is **CC-BY-4.0**; data is **CDLA-Permissive-1.0**. Every commit must carry a **Developer Certificate of Origin sign-off** (`git commit -s`). Files should carry SPDX identifiers. License exceptions require WG-charter-level approval and may not be granted locally.

### 2.3 Supremacy Clause

This charter, and the ORBIT WG charter above it, take precedence over all local Security Insights governance documents. Where a local policy conflicts with this charter, this charter governs and the local policy is void to the extent of the conflict.

### 2.4 Escalation Path

1. Maintainers attempt resolution under local governance (including lazy consensus and formal votes).
2. Unresolved maintainer deadlocks go to the Technical Initiative Lead.
3. If still unresolved, or if the Lead is a party to the dispute, any maintainer may escalate to the **ORBIT TSC Chair**; the TSC may decide the matter per WG charter §4.
4. TSC deadlocks may be referred to the OpenSSF TAC per WG charter §4.f.

## 3. Delegated Autonomy

Within the guardrails above, Security Insights maintainers are expressly authorized to self-govern, including:

- **Decision-making:** internal processes such as lazy consensus and the initiative's existing maintainer-consensus model, including per-component maintainer sets and the multi-organization voting requirement for specification changes
- **Contributor ladder:** maintainer nomination and self-nomination criteria, per-component roles, and emeritus/reactivation policies
- **Releases:** specification and tooling release cadence, versioning, and stability guarantees
- **Operations:** repository layout, review requirements beyond the WG minimum, meeting cadence, and creation of sub-project repositories within the scope of §1 (with notice to the ORBIT TSC)

Local governance must be published in the initiative's repositories.

## 4. Sub-Project Inheritance Header

Each Security Insights sub-project must paste the following block at the top of its local `GOVERNANCE.md`:

```markdown
> **Governance Notice:** This repository is a sub-project of **Security Insights**, a
> Technical Initiative of the
> [OpenSSF ORBIT Working Group](https://github.com/ossf/wg-orbit/blob/main/CHARTER.md),
> and is governed by the [Security Insights Parent Charter](https://github.com/ossf/wg-orbit/blob/main/technical-initiatives/projects/security-insights-charter.md).
> The Parent Charter's non-negotiable guardrails — the OpenSSF Code of Conduct,
> Apache-2.0/DCO licensing compliance, and escalation of unresolved disputes to the
> ORBIT TSC — apply here. In any conflict between this document and the Parent
> Charter, the Parent Charter prevails; all other matters are governed locally below.
```
