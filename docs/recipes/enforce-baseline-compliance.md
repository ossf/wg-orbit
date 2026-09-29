# Enforce Baseline Compliance Within an Organization

## Outcome

Establish and enforce minimum security expectations across all projects in an organization's portfolio, giving downstream consumers assurance that projects meet baseline security controls.

**Audience:** [Open Source Professional (OSPO)](https://ossf.github.io/community/personas/ospo/) — OSPO staff responsible for security policy across the organization's project portfolio

## Ingredients

| Name | Description |
|:-----|:------------|
| [OSPS Baseline](https://baseline.openssf.org) | Security controls organized by maturity level for open source projects |
| [Security Insights](https://github.com/ossf/security-insights) | Machine-readable security practices specification for open source projects |

## Equipment

| Name | Description | ORBIT | Artifacts | Gemara Layers | When to use |
|:-----|:------------|:------|:----------|:--------------|:------------|
| [Minder](https://mindersec.dev) | Supply chain measurement and reconciliation platform using the Kubernetes controller pattern | ✓ |  | Layer 5: Intent & Behavior Evaluation, Layer 6: Preventive & Remediative Enforcement | You need continuous scanning and auto-remediation at org scale |

## Technique

Continuous enforcement — define Minder rule profiles that encode OSPS Baseline controls and Security Insights requirements, then enroll repositories across the organization. Minder continuously evaluates each repository against the rule profiles and opens auto-remediation pull requests for fixable violations, giving the OSPO a portfolio-wide compliance posture without manual auditing.

## Yield

| Artifact | Description |
|:---------|:------------|
| Rule Profiles | Minder rule profiles encoding OSPS Baseline controls as enforceable policy across the organization |
| Portfolio Compliance Posture | Continuous compliance status across all enrolled repositories with auto-remediation for violations |

