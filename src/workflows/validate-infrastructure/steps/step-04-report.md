# Step 4: Generate Validation Report and Next Steps

## MANDATORY EXECUTION RULES

- **DO NOT** omit any section from the final report -- all 16 checklist areas must be represented.
- **DO NOT** issue a signoff recommendation without presenting the full findings to the user first.
- **DO NOT** auto-approve infrastructure that has unresolved critical findings.
- **DO NOT** save the final report without user confirmation of the signoff recommendation.

## EXECUTION PROTOCOLS

- Compile all findings from Steps 2 and 3 into a unified report structure.
- Calculate compliance metrics precisely -- do not estimate or round in ways that obscure gaps.
- Present remediation items prioritized by impact and severity, not by section order.
- Ensure the BMad Integration Assessment is included even if the user did not select those Advanced Elicitation options in Step 3.
- Save the final report to the configured `output_file` path only after user confirmation.

## CONTEXT BOUNDARIES

- This step synthesizes and reports on findings from all previous steps.
- Do not re-execute validation -- use the findings already documented.
- If gaps in the validation data are discovered during report generation, note them rather than going back to re-validate.
- This is the final step of the workflow -- provide clear closure and actionable next steps.

## YOUR TASK

Generate a comprehensive validation report that synthesizes all findings from the design review (Step 2) and comprehensive validation (Step 3). Provide a clear signoff recommendation, remediation plan for non-compliant items, BMad integration assessment, and actionable next steps.

## EXECUTION SEQUENCE

### 4.1 Compile Validation Summary

Generate a high-level summary across all 16 checklist sections:

| Section | Compliant | Non-Compliant | Partial | N/A | Compliance % |
|---|---|---|---|---|---|
| 1. Security & Compliance | | | | | |
| 2. Infrastructure as Code | | | | | |
| 3. Resilience & Availability | | | | | |
| 4. Backup & Disaster Recovery | | | | | |
| 5. Monitoring & Observability | | | | | |
| 6. Performance & Optimization | | | | | |
| 7. Operations & Governance | | | | | |
| 8. CI/CD & Deployment | | | | | |
| 9. Networking & Connectivity | | | | | |
| 10. Compliance & Documentation | | | | | |
| 11. BMAD Workflow Integration | | | | | |
| 12. Architecture Documentation Validation | | | | | |
| 13. Container Platform Validation | | | | | |
| 14. GitOps Workflows Validation | | | | | |
| 15. Service Mesh Validation | | | | | |
| 16. Developer Experience Platform Validation | | | | | |
| **TOTAL** | | | | | |

Calculate the **overall compliance percentage** across all sections.

Present this summary table to the user and ask for confirmation that the numbers are accurate.

### 4.2 Document Non-Compliant Items with Remediation Plans

For every Non-Compliant or Partial item identified during validation, create a remediation entry:

```
### [Item Reference] - [Brief Description]

- **Section:** [Checklist section]
- **Status:** Non-Compliant | Partial
- **Severity:** Critical | High | Medium | Low
- **Impact:** [Description of the risk or gap this creates]
- **Remediation:** [Specific actions required to achieve compliance]
- **Estimated Effort:** [T-shirt size: S/M/L/XL]
- **Priority:** [Based on severity and impact]
- **Owner:** [If identified, otherwise "TBD"]
```

> **critical_rule:** Remediation items MUST be prioritized by impact and severity, not by checklist section order. Critical security and operational risks must appear first regardless of which section they belong to.

Present the prioritized remediation list to the user. Group items by priority tier:

1. **Critical / Blocking** -- Must be resolved before deployment.
2. **High Priority** -- Should be resolved before deployment; may proceed with documented risk acceptance.
3. **Medium Priority** -- Should be resolved within a defined timeframe post-deployment.
4. **Low Priority** -- Tracked for future improvement; does not block deployment.

### 4.3 Highlight Critical Risks

Separately call out any findings that represent immediate security or operational risks:

- **Security Risks** -- Findings from Section 1, Section 13 (RBAC/security), Section 14 (GitOps security), or Section 15 (service mesh security) that are Non-Compliant.
- **Operational Risks** -- Findings that could cause service outages, data loss, or inability to recover from failures.
- **Compliance Risks** -- Findings that could result in regulatory non-compliance or audit failures.

For each critical risk, provide:

- Clear description of the risk.
- Potential blast radius if the risk materializes.
- Recommended immediate mitigation (even if temporary).

### 4.4 Include Design Review Findings

Incorporate the design review findings from Step 2:

- Summarize the design review outcome (Path A, B, or C from Step 2).
- List any accepted adjustments and confirm they were tracked during validation.
- Note any design concerns that were validated or invalidated during the comprehensive validation.
- If architectural issues were identified that were not visible during design review, document them here.

### 4.5 BMad Integration Assessment

Conduct a BMad Integration Assessment to evaluate how the validated infrastructure aligns with the broader BMad workflow. This assessment is mandatory regardless of the interaction mode selected.

#### Development Agent Alignment

Evaluate infrastructure support for development workflows:

- **Container Platform Dev Environments** -- Does the validated infrastructure properly support development environment provisioning on the container platform? Are developers able to self-service their environments?
- **GitOps for Deployment** -- Are GitOps workflows properly configured to support development team deployment patterns? Is the developer experience for deployments streamlined?
- **Service Mesh for Testing** -- Does the service mesh configuration support development testing patterns (traffic splitting, canary deployments, feature flags)?
- **Developer Experience Self-Service** -- Are self-service capabilities validated and operational for development teams?

Present findings and ask the user if the development team's needs are adequately addressed.

#### Product Alignment

Evaluate infrastructure support for product requirements:

- **Scalability Requirements** -- Does the infrastructure meet the scalability requirements defined in the PRD or product roadmap?
- **Deployment Automation** -- Is deployment automation sufficient to support the product release cadence?
- **Service Reliability** -- Do the validated SLAs and resilience configurations meet product reliability requirements?

Present findings and ask the user to confirm product alignment.

#### Architecture Alignment

Evaluate infrastructure implementation against architectural decisions:

- **Technology Selections** -- Do the implemented technologies match the architecture document's technology selections?
- **Security Patterns** -- Are the security patterns defined in the architecture properly implemented in the infrastructure?
- **Integration Patterns** -- Are integration points between infrastructure components implemented as designed?

Present findings and ask the user to confirm architecture alignment.

### 4.6 Signoff Recommendation

Based on the complete validation results, issue one of three signoff recommendations:

> **critical_rule:** The signoff recommendation MUST be presented to the user for explicit acceptance. Do not save the final report until the user confirms the recommendation.

#### Recommendation A: Approved for Deployment

Issue this recommendation when:

- Overall compliance is above the organization's threshold (default: 90%).
- No critical or blocking findings remain unresolved.
- All security sections have acceptable compliance levels.
- Design review passed without critical blockers.

Include:

- Deployment recommendation with any conditions noted.
- Monitoring requirements for the post-deployment period.
- Knowledge transfer items to ensure the operations team is prepared.
- Suggested post-deployment validation checkpoints.

#### Recommendation B: Approved with Conditions

Issue this recommendation when:

- Overall compliance is above a minimum threshold (default: 70%).
- No critical security findings remain unresolved.
- Non-critical findings have documented remediation plans with timelines.
- The user has accepted risk for deferred items.

Include:

- Specific conditions that must be met before or immediately after deployment.
- Timeline for resolving deferred findings.
- Risk acceptance documentation for items proceeding despite non-compliance.
- Enhanced monitoring recommendations for areas with known gaps.

#### Recommendation C: Rejected -- Remediation Required

Issue this recommendation when:

- Overall compliance is below the minimum threshold.
- Critical security or operational findings remain unresolved.
- Design review identified architectural issues that were not resolved.
- The infrastructure change poses unacceptable risk.

Include:

- Prioritized list of blockers vs. non-blockers.
- Recommended remediation sequence.
- Suggested timeline for re-validation.
- If architectural issues are involved, recommendation to escalate to the Architect agent.

Present the recommendation to the user with full justification. Ask the user to explicitly accept, modify, or override the recommendation.

### 4.7 Determine Next Steps

Based on the signoff recommendation accepted by the user:

**If Validation Successful (Recommendation A or B):**

- Prepare a deployment recommendation summary suitable for the deployment approval process.
- Outline monitoring requirements for the post-deployment observation period.
- Suggest knowledge transfer activities to ensure operational readiness.
- Recommend a post-deployment validation checkpoint schedule.

**If Validation Failed (Recommendation C):**

- Prioritize the remediation backlog, clearly distinguishing blockers from non-blockers.
- Recommend a remediation approach and timeline.
- Schedule a follow-up validation session.
- Identify quick wins that could be addressed immediately.

**If Design Review Found Architectural Issues:**

- Prepare an escalation summary for the Architect agent.
- Document the specific architectural issues with infrastructure impact analysis.
- Recommend the scope of architectural review needed.

### 4.8 Finalize and Save Report

Compile the complete validation report with all sections:

1. Executive Summary (compliance percentage, recommendation, critical findings count)
2. Change Summary (from Step 1)
3. Design Review Findings (from Step 2)
4. Validation Results by Section (from Step 3)
5. Compliance Summary Table (from 4.1)
6. Remediation Plan (from 4.2)
7. Critical Risks (from 4.3)
8. BMad Integration Assessment (from 4.5)
9. Signoff Recommendation (from 4.6)
10. Next Steps (from 4.7)

Update the validation report frontmatter:

- `stepsCompleted: [1, 2, 3, 4]`
- `status: complete`
- `overallCompliance: {{calculated_percentage}}`
- `recommendation: {{A, B, or C}}`

Save the final report to the configured `output_file` path.

Present the saved file location to the user and confirm the workflow is complete.

---

**Workflow Complete.** The validate-infrastructure workflow has finished. The validation report has been saved to `{output_file}`. Return the user to the agent menu.
