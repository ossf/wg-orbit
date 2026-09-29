# Demonstrate Baseline Adherence as a Project

## Outcome

Demonstrate that an open source project meets OSPS Baseline controls at its self-assessed maturity level, producing artifacts that downstream consumers can use for supply chain assurance.

**Audience:** [Software Developer / Maintainer](https://ossf.github.io/community/personas/developer/) — Project maintainer operating within a organization's security policy framework

## Ingredients

| Name | Description |
|:-----|:------------|
| [OSPS Baseline](https://baseline.openssf.org) | Security controls organized by maturity level for open source projects |
| [Security Insights](https://github.com/ossf/security-insights) | Machine-readable security practices specification for open source projects |

## Equipment

| Name | Description | ORBIT | Artifacts | Gemara Layers | When to use |
|:-----|:------------|:------|:----------|:--------------|:------------|
| [OSPS Baseline Scanner](https://github.com/ossf/pvtr-github-repo-scanner) | Privateer-based scanner for evaluating repository security hygiene against the OSPS Baseline | ✓ | EvaluationLog | Layer 5: Intent & Behavior Evaluation | You need compliance findings for a repository against the OSPS Baseline |
| [AMPEL](https://github.com/carabiner-dev/ampel) | Supply chain policy engine that enforces security frameworks based on attestations and immutable evidence |  |  | Layer 5: Intent & Behavior Evaluation, Layer 6: Preventive & Remediative Enforcement | You need to enforce security policies based on attestations and immutable evidence |

## Technique

Automated evidence production — use either the OSPS Baseline Scanner or AMPEL to produce verifiable proof of compliance. The Scanner directly evaluates repository controls against the OSPS Baseline and produces structured assessment results. Alternatively, AMPEL evaluates attestation-based policies against signed supply chain metadata, producing verification results that can themselves be attested for downstream consumers.

## Yield

| Artifact | Description |
|:---------|:------------|
| Assessment Results | Structured evaluation showing pass/fail status for each applicable OSPS Baseline control, produced by the Scanner or by AMPEL policy evaluation against attestations |

