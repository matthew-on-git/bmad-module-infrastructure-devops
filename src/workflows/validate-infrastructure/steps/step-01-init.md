# Step 1: Initialize Validation

## MANDATORY EXECUTION RULES

- **DO NOT** skip or abbreviate any part of this initialization step.
- **DO NOT** proceed to the next step until all required inputs are confirmed.
- **DO NOT** auto-generate or assume input documents exist -- ask the user to provide or point to each one.
- **HALT** the workflow entirely if the infrastructure change request has not been approved for validation.

## EXECUTION PROTOCOLS

- Present all options clearly and wait for user selection before proceeding.
- Document every decision made during initialization in the validation report frontmatter.
- If the user is unsure about an input, guide them on what the document should contain and where it might be located.

## CONTEXT BOUNDARIES

- This step handles **only** workflow initialization, mode selection, input gathering, and report scaffolding.
- Actual validation logic belongs in subsequent steps.
- Do not begin evaluating infrastructure quality or compliance during this step.

## YOUR TASK

Guide the user through initializing the validate-infrastructure workflow. You will establish the interaction mode, collect all required input documents, verify the change request is approved, and scaffold the validation report.

## EXECUTION SEQUENCE

### 1.1 Present Interaction Mode

Present the user with two interaction mode choices:

**Option A: Incremental Mode (Recommended)**

- Work through each of the 16 checklist sections one at a time.
- After each section, present findings and allow the user to provide additional context, clarify items, or request deeper analysis via Advanced Elicitation options.
- Best for thorough validation of significant infrastructure changes.

**Option B: YOLO Mode (Rapid Assessment)**

- Rapidly assess all 16 checklist sections in a single pass.
- Produce a comprehensive report at the end with compliance status and critical findings.
- Best for quick validation of minor changes or re-validation of previously reviewed infrastructure.

Ask the user to select their preferred mode. Wait for their response before continuing.

### 1.2 Gather Input Documents

Ask the user to provide or point to each of the following:

1. **Infrastructure Change Request** -- The specific change being validated. This could be a ticket, PR, document, or verbal description.
2. **Infrastructure Architecture Document** -- If one exists (typically produced by the Architect agent). If unavailable, note this as a gap.
3. **Infrastructure Guidelines** -- Organizational standards, policies, or guidelines that apply. If unavailable, note that defaults from the checklist will be used.
4. **Technology Stack Document** -- The project's technology stack and preferences. If unavailable, note that module config values will be used.

For each document, confirm the user has provided it or explicitly marked it as unavailable before moving on.

### 1.3 Verify Change Request Approval

> **critical_rule:** The infrastructure change request MUST be approved for validation before proceeding. This is a hard gate.

Ask the user to confirm that the change request has been approved for validation. Acceptable confirmations:

- The change request is in an "approved" or "ready for validation" state.
- A designated approver has signed off on the change request.
- The user has authority to approve and explicitly confirms approval.

**If the change request is NOT approved:** HALT the workflow. Inform the user that the change request must be approved before validation can proceed. Provide guidance on what approval means in the context of their organization.

### 1.4 Initialize the Validation Report

Create the validation report document at the configured `output_file` path with the following structure:

```markdown
---
title: Infrastructure Validation Report
date: {{date}}
mode: {{selected_mode}}
status: in-progress
stepsCompleted: [1]
changeRequest: {{change_request_reference}}
architectureDoc: {{architecture_doc_reference_or_N/A}}
guidelines: {{guidelines_reference_or_defaults}}
techStack: {{tech_stack_reference_or_module_config}}
overallCompliance: pending
---

# Infrastructure Validation Report

## Change Summary
{{Brief description of the infrastructure change being validated}}

## Input Documents
- Change Request: {{reference}}
- Architecture Document: {{reference or N/A}}
- Guidelines: {{reference or defaults}}
- Technology Stack: {{reference or module config}}

## Validation Findings
{{To be populated during validation}}
```

Present the scaffolded report frontmatter to the user for confirmation before saving.

### 1.5 Confirm and Proceed

Summarize the initialization:

- Selected mode (Incremental or YOLO)
- Input documents gathered (with any noted gaps)
- Change request approval status (confirmed)
- Validation report initialized

Ask the user to confirm they are ready to proceed to the Architecture Design Review Gate.

## NEXT STEP

Read fully and follow: `step-02-design-review.md`
