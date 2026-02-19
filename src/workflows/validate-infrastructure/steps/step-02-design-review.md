# Step 2: Architecture Design Review Gate

## MANDATORY EXECUTION RULES

- **DO NOT** skip the design review even if the user says the architecture has already been reviewed elsewhere.
- **DO NOT** proceed past this gate if critical implementation blockers are identified.
- **DO NOT** auto-resolve architectural issues -- escalate to the Architect agent when required.
- **HALT** the entire workflow if critical blockers cannot be resolved or deferred with user approval.

## EXECUTION PROTOCOLS

- Evaluate each dimension systematically -- do not combine or skip dimensions.
- Present findings to the user after each evaluation dimension and ask for confirmation or additional context.
- Use the escalation-assessment prompt from the agent configuration when classifying issues.
- Document all findings in the validation report with clear severity classifications.

## CONTEXT BOUNDARIES

- This step evaluates the **architecture document** for implementability from a DevOps/platform engineering perspective.
- This is NOT a full infrastructure validation -- that happens in Step 3.
- Focus on whether the architecture CAN be implemented, not whether it HAS been implemented correctly.
- If no architecture document was provided in Step 1, conduct a lightweight review based on the change request itself and note the absence of formal architecture documentation as a finding.

## YOUR TASK

Conduct a systematic review of the infrastructure architecture document (or change request, if no architecture document exists) to assess whether the proposed infrastructure changes are implementable, operationally feasible, and aligned with organizational capabilities. This is a critical gate -- unresolved blockers prevent the workflow from proceeding.

## EXECUTION SEQUENCE

### 2.1 Load Review Inputs

Retrieve the architecture document reference from the validation report frontmatter. Load the document and prepare for review. If no architecture document was provided, note this gap and proceed with the change request as the primary review input.

### 2.2 Evaluate Implementation Dimensions

Systematically review the architecture against each of the following six dimensions. For each dimension, present your assessment to the user and ask for their input before moving to the next.

#### Dimension 1: Implementation Complexity

- Assess the overall complexity of the proposed infrastructure changes.
- Identify components that require specialized expertise or tooling.
- Evaluate whether the proposed implementation timeline is realistic.
- Flag any "first-of-kind" patterns that carry elevated risk.

#### Dimension 2: Operational Feasibility

- Determine whether the operations team can support the proposed infrastructure in steady state.
- Evaluate monitoring, alerting, and incident response requirements.
- Assess the operational burden relative to the team's current capacity.
- Identify any 24/7 or on-call requirements introduced by the change.

#### Dimension 3: Resource Availability

- Verify that required compute, storage, and network resources are available or can be provisioned.
- Assess whether the team has the skills and bandwidth to implement.
- Identify any third-party dependencies or vendor engagements required.
- Check license, subscription, or quota requirements.

#### Dimension 4: Technology Compatibility

- Verify compatibility with the existing technology stack (from module config and tech stack document).
- Identify integration points with existing systems and assess complexity.
- Check for version conflicts, deprecation risks, or end-of-life concerns.
- Evaluate whether proposed technologies align with organizational standards.

#### Dimension 5: Security Implementation

- Assess whether the proposed security controls are implementable with available tools.
- Verify that the security architecture follows least-privilege and defense-in-depth principles.
- Identify any security requirements that may conflict with operational requirements.
- Check compliance implications of the proposed architecture.

#### Dimension 6: Maintenance Overhead

- Evaluate the long-term maintenance burden of the proposed infrastructure.
- Identify components that require frequent patching, upgrades, or manual intervention.
- Assess the upgrade path for key components.
- Evaluate technical debt implications.

### 2.3 Classify Findings

After completing all six dimension evaluations, classify each finding into one of four categories:

| Category | Description |
|---|---|
| **Approved Aspects** | Architecture elements that are sound, implementable, and aligned with best practices. |
| **Implementation Concerns** | Minor issues that can be addressed during implementation without architectural changes. Document adjustments needed. |
| **Required Modifications** | Significant issues that require changes to the architecture before implementation can proceed safely. |
| **Alternative Approaches** | Areas where a different approach would be materially better. Present alternatives with trade-off analysis. |

Present the classified findings to the user as a structured summary.

### 2.4 Decision Point

> **critical_rule:** All critical design review issues MUST be resolved before proceeding to comprehensive validation. This gate cannot be bypassed.

Based on the classified findings, determine the appropriate path:

**Path A: Critical Implementation Blockers Found**

If any findings are classified as "Required Modifications" with critical severity:

- HALT the validation workflow.
- Document all critical blockers with clear descriptions of why they block implementation.
- Recommend escalation to the Architect agent for resolution.
- Inform the user that the workflow cannot proceed until blockers are resolved.
- Provide the user with a summary suitable for forwarding to the Architect agent.

**Path B: Minor Concerns Identified**

If findings include "Implementation Concerns" or non-critical "Required Modifications":

- Document all concerns with proposed adjustments.
- Ask the user to acknowledge each concern and confirm that adjustments are acceptable.
- Note all accepted adjustments in the validation report for tracking during Step 3.
- Proceed to comprehensive validation with adjustments noted.

**Path C: Architecture Approved**

If all findings are "Approved Aspects" or minor "Implementation Concerns":

- Document the clean review result.
- Confirm with the user that the architecture is approved for comprehensive validation.
- Proceed to comprehensive validation.

### 2.5 Update Validation Report

Update the validation report with the design review findings:

- Add a "## Design Review Findings" section with all classified findings.
- Record the decision path taken (A, B, or C).
- If Path B, document all accepted adjustments.
- Update frontmatter: `stepsCompleted: [1, 2]`

Present the updated report section to the user for confirmation.

## NEXT STEP

Read fully and follow: `step-03-validate.md`
