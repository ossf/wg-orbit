# ORBIT Launchpad Parent Charter

A Special Interest Group (SIG) and Technical Initiative of the [OpenSSF ORBIT Working Group](../../CHARTER.md).

- **Co-Chairs:** Nicole Bates (@nikcal, ORBIT TSC representative) and Sarah Evans
- **Covered repositories:** [`ossf/orbit-launchpad`](https://github.com/ossf/orbit-launchpad) and any repositories created under this SIG

## 1. Mission & Technical Scope

Launchpad connects maintainers of open source supply chain security tools with end users, coordinating adoption and feedback while preserving each project's independence. Its first principle is **do no harm to maintainers**: reduce compliance burden, never add to it.

**In scope:**

- Coordination, adoption support, and end-user feedback loops for supported ORBIT-aligned initiatives (e.g., Minder, OSPS Baseline Scanner, Security Insights tooling, Gemara projects)
- Liaison work with end-user organizations and regulatory-driven adoption efforts (e.g., CRA readiness)
- Documentation, guidance, and integration into existing developer workflows

**Out of scope:**

- Building new tools or duplicating functionality that exists in other SIGs or projects
- Compliance certification or formal attestations

## 2. Parent Guardrails (Non-Negotiable)

These provisions bind every Launchpad activity and participant and may not be modified locally.

### 2.1 Code of Conduct

All participants are subject to the [OpenSSF Code of Conduct](https://openssf.org/community/code-of-conduct/). Co-Chairs must address reported violations promptly; reports involving a Co-Chair are escalated past that Co-Chair. Unresolved or serious incidents escalate to the ORBIT TSC Chair and, where appropriate, the OpenSSF CoC reporting process.

### 2.2 Intellectual Property & Licensing

Per WG charter §7: all inbound and outbound code is licensed **Apache-2.0**; documentation is **CC-BY-4.0**; data is **CDLA-Permissive-1.0**. Every commit must carry a **Developer Certificate of Origin sign-off** (`git commit -s`). Files should carry SPDX identifiers. License exceptions require WG-charter-level approval and may not be granted locally.

### 2.3 Supremacy Clause

This charter, and the ORBIT WG charter above it, take precedence over all local Launchpad governance documents. Where a local policy conflicts with this charter, this charter governs and the local policy is void to the extent of the conflict. This clause does not extend Launchpad authority over the projects it supports.

### 2.4 Escalation Path

1. Approvers attempt resolution under local governance (community consensus).
2. Unresolved deadlocks go to the Co-Chairs, who are chartered to resolve disputes.
3. If the Co-Chairs deadlock, or a Co-Chair is a party to the dispute, any Approver may escalate to the **ORBIT TSC Chair**; the TSC may decide the matter per WG charter §4.
4. TSC deadlocks may be referred to the OpenSSF TAC per WG charter §4.f.

## 3. Delegated Autonomy

Within the guardrails above, Launchpad Approvers and Co-Chairs are expressly authorized to self-govern, including:

- **Decision-making:** the SIG's community-consensus model, including multi-organization approval, public proposal presentation, end-user feedback thresholds, and maintainer endorsement requirements
- **Contributor ladder:** Approver confirmation, Co-Chair selection, liaison appointments, and delegation
- **Cadence:** meeting schedule, working sessions, and publication timing for SIG outputs
- **Operations:** repository layout, selection of supported projects (consistent with §1 and WG interoperability goals), and creation of sub-project repositories within the scope of §1 (with notice to the ORBIT TSC)

Local governance must be published in the SIG's repositories.

## 4. Sub-Project Inheritance Header

Each Launchpad sub-project must paste the following block at the top of its local `GOVERNANCE.md`:

```markdown
> **Governance Notice:** This repository is a sub-project of **ORBIT Launchpad**, a
> SIG and Technical Initiative of the
> [OpenSSF ORBIT Working Group](https://github.com/ossf/wg-orbit/blob/main/CHARTER.md),
> and is governed by the [Launchpad Parent Charter](https://github.com/ossf/wg-orbit/blob/main/technical-initiatives/sigs/launchpad-charter.md).
> The Parent Charter's non-negotiable guardrails — the OpenSSF Code of Conduct,
> Apache-2.0/DCO licensing compliance, and escalation of unresolved disputes to the
> ORBIT TSC — apply here. In any conflict between this document and the Parent
> Charter, the Parent Charter prevails; all other matters are governed locally below.
```
