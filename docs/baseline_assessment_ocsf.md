# Mapping the OSPS Baseline to OCSF Compliance Findings

When a project is assessed against the Baseline controls, it is useful to record the
findings of that assessment in detail and with consistent structure such that multiple
assessments of the same project or multiple assessments across many different projects
produce reasonably like data that can be used for compliance and risk analysis activities.

The Linux Foundation project, Open Cybersecurity Schema Framework (OCSF), defines a
[Compliance Finding schema](https://schema.ocsf.io/1.5.0/classes/compliance_finding) that
can be used to express the output from such assessments.

The source partners section of https://aws.amazon.com/security-lake/partners/ illustrates
that the OCSF schema has been widely adopted within the security and compliance space.

## Example OCSF data

The YAML data below shows how an evaluation of the baseline controls AC-01.01 and AC-03.02
can be expressed in OCSF-compliant/valid fashion and thus be ingested and analyzed relatively
easily with existing tooling.

```yaml
finding:
- category_name: Findings # required
  activity_id: 1 # creating a new finding after assessing this control for the first time, required
  compliance: # required, see https://schema.ocsf.io/1.5.0/objects/compliance?extensions=
    assessments: #optional, see https://schema.ocsf.io/1.5.0/objects/assessment?extensions=
    - category: source control # i.e. the source control repository is the subject of the assessment
      name: source forge configuration defaults
      desc: |
        Projects hosted on GitHub benefit from MFA requirements enforced by default
      meets_criteria: true
    category: Supply Chain Risk Assessment # optional
    checks: # optional, see https://schema.ocsf.io/1.5.0/objects/check?extensions=
    - uid: "OSPS-AC-01.01"
      name: "When a user attempts to access a sensitive resource in the project's version control system, the system MUST require the user to complete a multi-factor authentication process."
      version: "2025-02-25"
      status_id: 1 # this means pass
      standards:
      - "OSPS Baseline"
    control: |
      Enforce multi-factor authentication for the project's version control system, requiring collaborators to provide a second form of authentication when accessing sensitive data or modifying repository settings. Passkeys are acceptable for this control. # recommended
    requirements:
    - https://baseline.openssf.org/versions/2025-02-25#osps-ac-0101
    standards:
    - Open Source Project Security Baseline
    status_id: 1 # Pass
    # .....
  confidence_id: 2 # recommended
  disposition_id: 16 # recommended
  evidences: # optional, see https://schema.ocsf.io/1.5.0/objects/evidences?extensions=
  finding_info: # required, see https://schema.ocsf.io/1.5.0/objects/finding_info?extensions=
  is_alert: false # recommended
  message: "" # recommended
  metadata: {} # recommended, see https://schema.ocsf.io/1.5.0/objects/metadata?extensions=
  policy: {} # optional, see https://schema.ocsf.io/1.5.0/objects/policy?extensions=
  remediation: {} # recommended, see https://schema.ocsf.io/1.5.0/objects/remediation?extensions=
  resources: [] # recommended, see https://schema.ocsf.io/1.5.0/objects/resource_details?extensions=
  risk_level_id: 2 # optional
  status_id: # recommended
  time: # required
- category_name: Findings # required
  activity_id: 1 # creating a new finding after assessing this control for the first time, required
  compliance: # required, see https://schema.ocsf.io/1.5.0/objects/compliance?extensions=
    assessments: #optional, see https://schema.ocsf.io/1.5.0/objects/assessment?extensions=
      - category: source control # i.e. the source control repository is the subject of the assessment
        name: github protected branches configuration for primary branch
        desc: |
          The response from the GitHub REST API endpoint https://api.github.com/repos/OWNER/REPO/branches/BRANCH/protection
          for the repository's main branch is evaluated to ensure that `allow_deletions.enabled` is set to `false`
        meets_criteria: true
    category: Supply Chain Risk Assessment # optional
    checks: # optional, see https://schema.ocsf.io/1.5.0/objects/check?extensions=
      - uid: "OSPS-AC-03.02"
        name: "When an attempt is made to delete the project's primary branch, the version control system MUST treat this as a sensitive activity and require explicit confirmation of intent."
        version: "2025-02-25"
        status_id: 1 # this means pass
        standards:
          - "OSPS Baseline"
    control: Tightly restrict deletion of the primary branch in project VCS # recommended
    requirements:
      - https://baseline.openssf.org/versions/2025-02-25#osps-ac-0302
    standards:
      - Open Source Project Security Baseline
    status_id: 1 # Pass
    # .....
  confidence_id: 2 # recommended
  disposition_id: 16 # recommended
  evidences: # optional, see https://schema.ocsf.io/1.5.0/objects/evidences?extensions=
  finding_info: # required, see https://schema.ocsf.io/1.5.0/objects/finding_info?extensions=
  is_alert: false # recommended
  message: "" # recommended
  metadata: {} # recommended, see https://schema.ocsf.io/1.5.0/objects/metadata?extensions=
  policy: {} # optional, see https://schema.ocsf.io/1.5.0/objects/policy?extensions=
  remediation: {} # recommended, see https://schema.ocsf.io/1.5.0/objects/remediation?extensions=
  resources: [] # recommended, see https://schema.ocsf.io/1.5.0/objects/resource_details?extensions=
  risk_level_id: 2 # optional
  status_id: # recommended
  time: # required
```

The schema has several useful qualities in what it allows us to express

- Lifecycle - activity_id allows findings to undergo lifecycle state transitions
- Moderately strict - many fields are recommended/optional allowing flexibility
- Security & compliance native - schema types account for partial mitigation states, risk acceptance and the like