# Assess and Remediate OSPS Baseline Gaps

## Outcome

Understand where a project stands against the OSPS Baseline and get actionable remediation guidance for identified gaps, improving security posture without manual research into each control.

**Audience:** [Software Developer / Maintainer](https://ossf.github.io/community/personas/developer/) — Project maintainer who wants to evaluate and improve their project's security posture against the OSPS Baseline

## Ingredients

| Name | Description |
|:-----|:------------|
| [OSPS Baseline](https://baseline.openssf.org) | Security controls organized by maturity level for open source projects |

## Equipment

| Name | Description | ORBIT | Artifacts | Gemara Layers | When to use |
|:-----|:------------|:------|:----------|:--------------|:------------|
| [OSPS Baseline Scanner](https://github.com/ossf/pvtr-github-repo-scanner) | Privateer-based scanner for evaluating repository security hygiene against the OSPS Baseline | ✓ | EvaluationLog | Layer 5: Intent & Behavior Evaluation | You need compliance findings for a repository against the OSPS Baseline |
| [darnit](https://github.com/kusari-oss/darnit) | AI-assisted remediation tool that consumes OSPS Baseline Scanner findings to suggest fixes |  |  | Layer 5: Intent & Behavior Evaluation, Layer 6: Preventive & Remediative Enforcement | You have Baseline Scanner findings and want AI-suggested remediation |

## Technique

Scan and remediate — run the OSPS Baseline Scanner against the repository to produce a compliance assessment identifying which controls pass, fail, or are not yet evaluated. Feed the scanner's findings into darnit, which uses AI to suggest concrete fixes for each failing control. Review and apply the suggested remediations, then re-scan to confirm the gaps are closed.

## Yield

| Artifact | Description |
|:---------|:------------|
| Baseline Assessment | Compliance report showing the project's status against each OSPS Baseline control at its assessed maturity level |
| Remediation Suggestions | AI-generated fix suggestions for each failing control, ready to review and apply |

