# Step 3: Execute Comprehensive Platform Validation

## MANDATORY EXECUTION RULES

- **DO NOT** skip any of the 16 checklist sections -- every section must be evaluated or explicitly marked N/A with justification.
- **DO NOT** auto-fill compliance status -- ask the user for evidence or confirmation for each item.
- **DO NOT** combine sections in Incremental mode -- present and complete one section at a time.
- **DO NOT** mark items as compliant without evidence or user confirmation.
- **HALT** on any critical security or operational finding that represents an immediate risk.

## EXECUTION PROTOCOLS

- Load the infrastructure checklist from `{checklist_path}` at the start of this step.
- Track compliance status for every checklist item: Compliant, Non-Compliant, Partial, N/A.
- Calculate per-section compliance percentages after completing each section.
- In Incremental mode, present Advanced Elicitation options after each section.
- In YOLO mode, work through all sections rapidly but still require user input for ambiguous items.
- Carry forward any design review adjustments from Step 2 and verify them against relevant checklist items.

## CONTEXT BOUNDARIES

- This step executes the actual validation against the 16-section infrastructure checklist.
- Findings are documented but remediation planning happens in Step 4.
- Do not generate the final report here -- that belongs in Step 4.
- Reference design review findings from Step 2 where they relate to specific checklist items.

## YOUR TASK

Guide the user through a comprehensive validation of their infrastructure changes against all 16 sections of the infrastructure checklist. The execution approach depends on the mode selected in Step 1.

## EXECUTION SEQUENCE

### 3.1 Load Checklist and Prepare

Load the infrastructure checklist from `{checklist_path}`. Confirm with the user that the checklist has loaded correctly. Remind the user of:

- The selected interaction mode (Incremental or YOLO).
- Any design review adjustments noted in Step 2 that should be tracked during validation.
- The infrastructure change request being validated.

### 3.2 Execute Validation by Mode

---

#### INCREMENTAL MODE

For each of the 16 checklist sections, execute the following sequence:

##### A. Present Section

Present the section to the user with:

- **Section number and title** (e.g., "Section 1: Security & Compliance")
- **Section purpose** -- a brief explanation of why this section matters for their infrastructure change.
- **Number of items** in the section.
- **Relevance note** -- highlight any items that are particularly relevant given the change request and design review findings.

##### B. Work Through Each Item

For each checklist item within the section:

1. Present the item to the user.
2. Ask the user for the compliance status: **Compliant**, **Non-Compliant**, **Partial**, or **N/A**.
3. If Compliant: Ask for brief evidence or reference (e.g., "Configured in terraform module X", "Documented in runbook Y").
4. If Non-Compliant: Document the gap and ask the user if they are aware of the gap and whether remediation is planned.
5. If Partial: Document what is in place and what is missing.
6. If N/A: Ask for justification of why this item does not apply to the current change.

> **critical_rule:** Items in Section 1 (Security & Compliance) and Section 13 (Container Platform Validation) that are marked Non-Compliant with no remediation plan MUST be flagged as critical findings.

##### C. Advanced Elicitation Options

After completing all items in a section, offer the user the following Advanced Elicitation options:

| Option | Description |
|---|---|
| **Critical Security Assessment** | Deep-dive into security implications of findings in this section. Assess blast radius, attack surface changes, and threat modeling considerations. |
| **Platform Integration Evaluation** | Evaluate how this section's findings impact integration with the broader platform (container platform, service mesh, GitOps workflows). |
| **Cross-Environment Consistency Review** | Verify that findings are consistent across development, staging, and production environments. Identify environment-specific gaps. |
| **Technical Debt Analysis** | Assess whether any accepted gaps or partial compliance items represent accumulating technical debt. Evaluate long-term impact. |
| **Compliance Deep Dive** | Evaluate findings against specific regulatory or compliance frameworks (SOC 2, ISO 27001, HIPAA, PCI-DSS, etc.) relevant to the organization. |
| **Cost Optimization Analysis** | Analyze cost implications of the current compliance status and proposed remediations. Identify cost-effective alternatives. |
| **Operational Resilience Testing** | Evaluate whether the infrastructure can withstand failure scenarios. Assess chaos engineering readiness and blast radius containment. |
| **Finalize Section** | Accept the section findings as-is and move to the next section. |

The user may select one or more Advanced Elicitation options before finalizing the section. Execute each selected option and document additional findings before moving on.

##### D. Section Summary

After finalizing the section (including any Advanced Elicitation), present a section summary:

- **Section compliance percentage** = (Compliant + N/A) / Total items x 100
- **Compliant items count**
- **Non-Compliant items count** (with severity)
- **Partial items count**
- **N/A items count**
- **Critical findings** (if any)
- **Design review adjustments addressed** (if any from Step 2 apply to this section)

Ask the user to confirm the section summary before proceeding to the next section.

##### E. Repeat for All 16 Sections

Execute steps A through D for each of the following sections in order:

1. Security & Compliance
2. Infrastructure as Code
3. Resilience & Availability
4. Backup & Disaster Recovery
5. Monitoring & Observability
6. Performance & Optimization
7. Operations & Governance
8. CI/CD & Deployment
9. Networking & Connectivity
10. Compliance & Documentation
11. BMAD Workflow Integration
12. Architecture Documentation Validation
13. Container Platform Validation
14. GitOps Workflows Validation
15. Service Mesh Validation
16. Developer Experience Platform Validation

---

#### YOLO MODE

Execute the following rapid assessment sequence:

##### A. Rapid Section Assessment

For each of the 16 sections, present all items simultaneously and ask the user to provide a rapid status assessment:

- Bulk-mark items as Compliant, Non-Compliant, Partial, or N/A.
- Allow the user to provide status at the subsection level (e.g., "1.1 Access Management: All Compliant") rather than item-by-item.
- Accept grouped responses (e.g., "Sections 1-3 are fully compliant, Section 4 has gaps in 4.2").

##### B. Identify Critical Non-Compliance

After the rapid assessment of all 16 sections:

- Identify all Non-Compliant items, especially in critical sections (1, 13, 14, 15).
- Present the critical non-compliance items to the user for confirmation.
- Ask the user for brief context on each critical non-compliance item.

> **critical_rule:** Even in YOLO mode, critical security findings (Section 1) and container platform findings (Section 13) that are Non-Compliant MUST be individually reviewed with the user.

##### C. Comprehensive Rapid Report

Present a comprehensive compliance matrix across all 16 sections:

- Per-section compliance percentage.
- Total compliant, non-compliant, partial, and N/A counts.
- Critical findings highlighted.
- Sections requiring immediate attention flagged.

Ask the user to review and confirm the rapid assessment results.

---

### 3.3 Update Validation Report

Regardless of mode, update the validation report with:

- Compliance status for every checklist item (or subsection in YOLO mode).
- Per-section compliance percentages.
- All findings, gaps, and critical items documented.
- Advanced Elicitation findings (Incremental mode only).
- Cross-references to design review findings from Step 2.
- Update frontmatter: `stepsCompleted: [1, 2, 3]`

Present a high-level summary of the validation results to the user before proceeding to the final step.

## NEXT STEP

Read fully and follow: `step-04-report.md`
