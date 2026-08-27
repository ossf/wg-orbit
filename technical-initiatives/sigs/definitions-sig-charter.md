# ORBIT Definitions SIG Parent Charter

A Special Interest Group (SIG) and Technical Initiative of the [OpenSSF ORBIT Working Group](../../CHARTER.md).

- **SIG Lead:** Eddie Knight, Revanite (Interim Only)

## 1. Mission & Technical Scope

The Definitions SIG develops and maintains a portfolio of definition artifacts — specifications, criteria sets, taxonomies, and supporting vocabularies — that open source projects and their consumers can adopt to describe and improve security posture. Artifacts are developed in parallel with a quick decision cycle that captures broad stakeholder input.

**In scope:**

- Specification and maintenance of definition artifacts (see §3), including their criteria, tiers, and supporting definitions
- Documentation, mappings to external frameworks, and machine-readable representations of each artifact (including Gemara-compatible formats)
- Guidance for projects adopting the artifacts

**Out of scope:**

- Certification, accreditation, or attestation of specific projects against any artifact
- Enforcement or scanning tooling (tooling such as the Baseline scanner is coordinated through ORBIT Launchpad and tool-owning initiatives)
- Security requirements unrelated to open source project operations

## 2. Parent Guardrails (Non-Negotiable)

These provisions bind every Definitions SIG repository and participant and may not be modified locally.

### 2.1 Code of Conduct

All participants are subject to the [OpenSSF Code of Conduct](https://openssf.org/community/code-of-conduct/). Maintainers must address reported violations promptly; reports involving a maintainer are escalated past that maintainer. Unresolved or serious incidents escalate to the ORBIT TSC Chair and, where appropriate, the OpenSSF CoC reporting process.

### 2.2 Intellectual Property & Licensing

Per WG charter §7: all inbound and outbound code is licensed **Apache-2.0**; documentation is **CC-BY-4.0**; data is **CDLA-Permissive-1.0**. Every commit must carry a **Developer Certificate of Origin sign-off** (`git commit -s`). Files should carry SPDX identifiers. License exceptions require WG-charter-level approval and may not be granted locally.

### 2.3 Supremacy Clause

This charter, and the ORBIT WG charter above it, take precedence over all local Definitions SIG governance documents. Where a local policy conflicts with this charter, this charter governs and the local policy is void to the extent of the conflict.

### 2.4 Escalation Path

1. Artifact maintainers attempt resolution under local governance (including lazy consensus and formal votes).
2. Unresolved maintainer deadlocks go to the SIG Lead. **While the Lead position is vacant, this step is skipped and escalation proceeds directly to step 3.**
3. Any maintainer may escalate to the **ORBIT TSC Chair**; the TSC may decide the matter per WG charter §4.
4. TSC deadlocks may be referred to the OpenSSF TAC per WG charter §4.f.

## 3. Artifacts & Maintainer Assignment

The SIG maintains multiple artifacts in parallel. Maintainership is assigned **per artifact**: each artifact has its own designated maintainers, and maintainer status on one artifact confers no authority over another. The SIG Lead coordinates across artifacts but does not override artifact-level decisions except through the escalation path in §2.4.

| Artifact | Repository | Maintainers |
|----------|------------|-------------|
| Open Source Project Security Baseline (OSPS Baseline) | [`ossf/security-baseline`](https://github.com/ossf/security-baseline) | TBD |
| Open Source Project Security Definitions (OSPS Definitions) | [`ossf/security-baseline`](https://github.com/ossf/security-baseline) | TBD |

| _(additional artifacts to be listed as adopted)_ | | |

<!-- TODO: maintainer-assignment mechanics (nomination, confirmation, removal, cross-artifact participation) to be detailed. -->

New artifacts are adopted into this table by decision of the SIG under §4, with notice to the ORBIT TSC.

## 4. Delegated Autonomy

Within the guardrails above, artifact maintainers are expressly authorized to self-govern their artifact, including:

- **Decision-making:** internal processes such as lazy consensus and 51% maintainer-consensus with a ~2-business-day review window (66% for local governance revisions)
- **Contributor ladder:** maintainer nomination criteria (e.g., sustained contribution or committee sponsorship), roles, and emeritus policies for that artifact
- **Releases:** cadence and versioning of artifact editions
- **Operations:** repository layout, review requirements beyond the WG minimum, meeting cadence, and creation of sub-project repositories within the scope of §1 (with notice to the ORBIT TSC)

Local governance must be published in the artifact's repositories.

## 5. Sub-Project Inheritance Header

Each Definitions SIG sub-project must paste the following block at the top of its local `GOVERNANCE.md`:

```markdown
> **Governance Notice:** This repository is a sub-project of the **ORBIT Definitions SIG**,
> a SIG and Technical Initiative of the
> [OpenSSF ORBIT Working Group](https://github.com/ossf/wg-orbit/blob/main/CHARTER.md),
> and is governed by the [Definitions SIG Parent Charter](https://github.com/ossf/wg-orbit/blob/main/technical-initiatives/sigs/definitions-sig-charter.md).
> The Parent Charter's non-negotiable guardrails — the OpenSSF Code of Conduct,
> Apache-2.0/DCO licensing compliance, and escalation of unresolved disputes to the
> ORBIT TSC — apply here. In any conflict between this document and the Parent
> Charter, the Parent Charter prevails; all other matters are governed locally below.
```
