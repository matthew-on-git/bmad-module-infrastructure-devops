<!-- Powered by BMAD Method -->

<!-- GUIDANCE:
  This template guides creation of a detailed platform infrastructure implementation plan
  based on an approved infrastructure architecture document. Fill in all {{placeholder}}
  values and follow the guidance comments throughout each section.

  CRITICAL RULE: All platform implementation must align with the approved infrastructure
  architecture. Any deviations require architect approval.

  Usage:
  1. Start with the approved infrastructure architecture document.
  2. Conduct a joint planning session with the Architect (Section 2).
  3. Complete each platform layer section in sequence.
  4. Include IaC code, manifests, and configuration where indicated.
  5. Conclude with architect review and sign-off (Section 12).
-->

# {{project_name}} Platform Infrastructure Implementation

> **Architecture Reference:** {{architecture_document_link}}
> **Implementation Owner:** {{implementation_lead}}
> **Architect:** {{architect_name}}
> **Status:** {{status}}

---

## 1. Executive Summary

<!-- GUIDANCE: Provide a high-level overview of the platform implementation. This section
     should be understandable by both technical and non-technical stakeholders. -->

### Platform Implementation Scope and Objectives

{{implementation_scope_description}}

- **Primary Objective:** {{primary_objective}}
- **Secondary Objectives:**
  - {{secondary_objective_1}}
  - {{secondary_objective_2}}

### Key Architectural Decisions Being Implemented

<!-- GUIDANCE: Reference specific decisions from the approved architecture document.
     Each decision should trace back to the architecture with a clear rationale. -->

| Decision | Architecture Reference | Implementation Approach |
|----------|----------------------|------------------------|
| {{decision_1}} | {{arch_ref_1}} | {{approach_1}} |
| {{decision_2}} | {{arch_ref_2}} | {{approach_2}} |
| {{decision_3}} | {{arch_ref_3}} | {{approach_3}} |

### Expected Outcomes and Benefits

- {{outcome_1}}
- {{outcome_2}}
- {{outcome_3}}

### Timeline and Milestones

| Milestone | Target Date | Dependencies | Status |
|-----------|-------------|--------------|--------|
| Foundation Infrastructure Complete | {{foundation_date}} | {{foundation_deps}} | {{foundation_status}} |
| Container Platform Operational | {{container_date}} | {{container_deps}} | {{container_status}} |
| GitOps Workflows Active | {{gitops_date}} | {{gitops_deps}} | {{gitops_status}} |
| Service Mesh Deployed | {{mesh_date}} | {{mesh_deps}} | {{mesh_status}} |
| Developer Platform Live | {{devex_date}} | {{devex_deps}} | {{devex_status}} |
| Platform Hardened & Validated | {{hardened_date}} | {{hardened_deps}} | {{hardened_status}} |

---

## 2. Joint Planning Session with Architect

<!-- GUIDANCE: This section documents the collaborative planning session between the
     implementation lead and the architect. Complete this BEFORE beginning implementation.
     All decisions made here must be recorded and agreed upon by both parties. -->

### 2.1 Architecture Alignment Review

- **Architecture Document Reviewed:** {{architecture_document_title}} (v{{architecture_version}})
- **Review Date:** {{review_date}}
- **Participants:** {{review_participants}}

#### Design Decisions Confirmed

<!-- GUIDANCE: List each design decision from the architecture document and confirm
     understanding and agreement on implementation approach. -->

- [ ] {{design_decision_1}} -- Confirmed and understood
- [ ] {{design_decision_2}} -- Confirmed and understood
- [ ] {{design_decision_3}} -- Confirmed and understood

#### Ambiguities or Gaps Identified

<!-- GUIDANCE: Document any areas where the architecture is unclear, incomplete, or
     requires clarification. Each item must be resolved before implementation begins. -->

| Item | Description | Resolution | Resolved By |
|------|-------------|------------|-------------|
| {{gap_1}} | {{gap_1_description}} | {{gap_1_resolution}} | {{gap_1_owner}} |
| {{gap_2}} | {{gap_2_description}} | {{gap_2_resolution}} | {{gap_2_owner}} |

#### Implementation Approach Agreement

{{implementation_approach_summary}}

### 2.2 Implementation Strategy Collaboration

#### Platform Layer Sequencing

<!-- GUIDANCE: Define the order in which platform layers will be built. Each layer
     should have clear prerequisites and dependencies on prior layers. -->

1. **Foundation Infrastructure** -- {{foundation_strategy}}
2. **Container Platform** -- {{container_strategy}}
3. **GitOps Workflows** -- {{gitops_strategy}}
4. **Service Mesh** -- {{mesh_strategy}}
5. **Developer Experience** -- {{devex_strategy}}
6. **Integration & Hardening** -- {{hardening_strategy}}

#### Technology Stack Validation

| Layer | Technology | Version | Justification |
|-------|-----------|---------|---------------|
| IaC | {{iac_tool}} | {{iac_version}} | {{iac_justification}} |
| Container Platform | {{container_platform}} | {{container_version}} | {{container_justification}} |
| GitOps | {{gitops_tool}} | {{gitops_version}} | {{gitops_justification}} |
| Service Mesh | {{mesh_tool}} | {{mesh_version}} | {{mesh_justification}} |
| Monitoring | {{monitoring_tool}} | {{monitoring_version}} | {{monitoring_justification}} |

#### Integration Approach Between Layers

{{integration_approach_description}}

#### Testing and Validation Strategy

{{testing_strategy_description}}

### 2.3 Risk & Constraint Discussion

#### Technical Risks and Mitigation Strategies

| Risk | Likelihood | Impact | Mitigation Strategy | Owner |
|------|-----------|--------|---------------------|-------|
| {{risk_1}} | {{risk_1_likelihood}} | {{risk_1_impact}} | {{risk_1_mitigation}} | {{risk_1_owner}} |
| {{risk_2}} | {{risk_2_likelihood}} | {{risk_2_impact}} | {{risk_2_mitigation}} | {{risk_2_owner}} |
| {{risk_3}} | {{risk_3_likelihood}} | {{risk_3_impact}} | {{risk_3_mitigation}} | {{risk_3_owner}} |

#### Resource Constraints and Workarounds

- {{resource_constraint_1}}
- {{resource_constraint_2}}

#### Timeline Considerations

- **Hard Deadlines:** {{hard_deadlines}}
- **External Dependencies:** {{external_dependencies}}
- **Buffer Allocation:** {{buffer_allocation}}

#### Compliance and Security Requirements

- {{compliance_requirement_1}}
- {{compliance_requirement_2}}
- {{security_requirement_1}}
- {{security_requirement_2}}

### 2.4 Validation Planning

#### Success Criteria for Each Platform Layer

| Platform Layer | Success Criteria | Validation Method |
|---------------|-----------------|-------------------|
| Foundation Infrastructure | {{foundation_criteria}} | {{foundation_validation}} |
| Container Platform | {{container_criteria}} | {{container_validation}} |
| GitOps Workflows | {{gitops_criteria}} | {{gitops_validation}} |
| Service Mesh | {{mesh_criteria}} | {{mesh_validation}} |
| Developer Experience | {{devex_criteria}} | {{devex_validation}} |

#### Testing Approach and Acceptance Criteria

{{acceptance_criteria_description}}

#### Rollback Strategies

<!-- GUIDANCE: Define rollback procedures for each platform layer. Every implementation
     step must have a documented path to revert to the prior state. -->

- **Foundation:** {{foundation_rollback}}
- **Container Platform:** {{container_rollback}}
- **GitOps:** {{gitops_rollback}}
- **Service Mesh:** {{mesh_rollback}}
- **Developer Platform:** {{devex_rollback}}

#### Communication Plan

- **Stakeholder Updates:** {{stakeholder_update_cadence}}
- **Escalation Path:** {{escalation_path}}
- **Status Reporting:** {{status_reporting_method}}

---

## 3. Foundation Infrastructure Layer

<!-- GUIDANCE: This section covers the base infrastructure that all other platform layers
     depend on. Complete and validate this layer before proceeding to Section 4.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 3.1 Cloud Provider Setup

#### Account/Subscription Configuration

- **Provider:** {{cloud_provider}}
- **Account/Subscription ID:** {{account_id}}
- **Account Structure:** {{account_structure}}
- **Billing Configuration:** {{billing_configuration}}

#### Region Selection and Setup

| Region | Purpose | Justification |
|--------|---------|---------------|
| {{primary_region}} | Primary | {{primary_region_justification}} |
| {{secondary_region}} | DR / Secondary | {{secondary_region_justification}} |

#### Resource Group / Organizational Structure

{{resource_organization_description}}

#### Cost Management Setup

- **Budget Alerts:** {{budget_alert_thresholds}}
- **Cost Allocation Tags:** {{cost_allocation_tags}}
- **Reserved Capacity:** {{reserved_capacity_plan}}

### 3.2 Network Foundation

#### VPC/VNet Setup with CIDR Allocations

<!-- GUIDANCE: Document the full network topology. Include CIDR ranges, subnet assignments,
     and network segmentation strategy. Ensure alignment with the architecture document. -->

| Network | CIDR | Purpose |
|---------|------|---------|
| {{vpc_name}} | {{vpc_cidr}} | {{vpc_purpose}} |

#### Subnet Design

| Subnet | CIDR | AZ | Type | Purpose |
|--------|------|----|------|---------|
| {{subnet_1_name}} | {{subnet_1_cidr}} | {{subnet_1_az}} | Public | {{subnet_1_purpose}} |
| {{subnet_2_name}} | {{subnet_2_cidr}} | {{subnet_2_az}} | Private | {{subnet_2_purpose}} |
| {{subnet_3_name}} | {{subnet_3_cidr}} | {{subnet_3_az}} | Isolated | {{subnet_3_purpose}} |

#### Security Groups and NACLs

{{security_groups_description}}

#### DNS Configuration

- **Domain:** {{domain_name}}
- **DNS Provider:** {{dns_provider}}
- **Zone Configuration:** {{dns_zone_config}}

#### Infrastructure as Code -- Network Foundation

<!-- GUIDANCE: Include the actual IaC code or reference the code repository location.
     All network resources must be provisioned via IaC with no manual configuration. -->

```{{iac_language}}
# Network Foundation IaC
# Repository: {{iac_repo_url}}
# Path: {{iac_network_path}}

{{network_iac_code}}
```

### 3.3 Security Foundation

#### IAM Roles and Policies

<!-- GUIDANCE: Follow least-privilege principles. Document all roles, their permissions,
     and the justification for each. -->

| Role | Purpose | Permissions Scope | Assigned To |
|------|---------|-------------------|-------------|
| {{role_1_name}} | {{role_1_purpose}} | {{role_1_scope}} | {{role_1_assigned}} |
| {{role_2_name}} | {{role_2_purpose}} | {{role_2_scope}} | {{role_2_assigned}} |

#### Security Groups and NACLs

| Security Group | Inbound Rules | Outbound Rules | Associated Resources |
|---------------|---------------|----------------|---------------------|
| {{sg_1_name}} | {{sg_1_inbound}} | {{sg_1_outbound}} | {{sg_1_resources}} |
| {{sg_2_name}} | {{sg_2_inbound}} | {{sg_2_outbound}} | {{sg_2_resources}} |

#### Encryption Keys (KMS / Key Vault)

- **Key Management Service:** {{kms_provider}}
- **Encryption Keys:**
  - {{key_1_name}}: {{key_1_purpose}} (rotation: {{key_1_rotation}})
  - {{key_2_name}}: {{key_2_purpose}} (rotation: {{key_2_rotation}})

#### Compliance Controls

- {{compliance_control_1}}
- {{compliance_control_2}}
- {{compliance_control_3}}

### 3.4 Core Services

#### DNS Configuration

- **Internal DNS:** {{internal_dns_config}}
- **External DNS:** {{external_dns_config}}
- **Split-horizon DNS:** {{split_horizon_config}}

#### Certificate Management

- **CA Provider:** {{ca_provider}}
- **Certificate Inventory:**
  - {{cert_1}}: {{cert_1_purpose}} (expiry: {{cert_1_expiry}})
  - {{cert_2}}: {{cert_2_purpose}} (expiry: {{cert_2_expiry}})
- **Auto-Renewal:** {{auto_renewal_config}}

#### Logging Infrastructure

- **Log Aggregation:** {{log_aggregation_tool}}
- **Log Retention:** {{log_retention_policy}}
- **Log Destinations:** {{log_destinations}}

#### Monitoring Foundation

- **Monitoring Platform:** {{monitoring_platform}}
- **Metrics Collection:** {{metrics_collection_method}}
- **Base Dashboards:** {{base_dashboards}}

---

## 4. Container Platform Implementation

<!-- GUIDANCE: Build the container orchestration platform on top of the validated foundation
     infrastructure. Ensure all prerequisites from Section 3 are complete before proceeding.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 4.1 Kubernetes Cluster Setup

#### Cluster Provisioning

- **Distribution:** {{k8s_distribution}} (e.g., EKS, AKS, GKE, kubeadm, k3s)
- **Kubernetes Version:** {{k8s_version}}
- **Cluster Name:** {{cluster_name}}
- **Network Plugin (CNI):** {{cni_plugin}}
- **Service CIDR:** {{service_cidr}}
- **Pod CIDR:** {{pod_cidr}}

#### Control Plane Configuration

- **Control Plane Nodes:** {{control_plane_count}}
- **Control Plane Instance Type:** {{control_plane_instance_type}}
- **etcd Configuration:** {{etcd_config}}
- **API Server Flags:** {{api_server_flags}}

#### Infrastructure as Code / CLI -- Cluster Provisioning

<!-- GUIDANCE: Include the provisioning code or commands. All cluster resources must be
     reproducible from code. -->

```{{iac_language}}
# Kubernetes Cluster Provisioning
# Repository: {{iac_repo_url}}
# Path: {{iac_cluster_path}}

{{cluster_provisioning_code}}
```

### 4.2 Node Configuration

#### Node Groups / Pools Setup

| Node Group | Instance Type | Min | Max | Labels | Taints | Purpose |
|-----------|--------------|-----|-----|--------|--------|---------|
| {{ng_1_name}} | {{ng_1_type}} | {{ng_1_min}} | {{ng_1_max}} | {{ng_1_labels}} | {{ng_1_taints}} | {{ng_1_purpose}} |
| {{ng_2_name}} | {{ng_2_type}} | {{ng_2_min}} | {{ng_2_max}} | {{ng_2_labels}} | {{ng_2_taints}} | {{ng_2_purpose}} |

#### Autoscaling Configuration

- **Cluster Autoscaler Version:** {{autoscaler_version}}
- **Scale-Up Threshold:** {{scale_up_threshold}}
- **Scale-Down Threshold:** {{scale_down_threshold}}
- **Cooldown Period:** {{cooldown_period}}

#### Node Security Hardening

- {{node_hardening_1}}
- {{node_hardening_2}}
- {{node_hardening_3}}
- **CIS Benchmark Compliance:** {{cis_benchmark_status}}

#### Resource Quotas and Limits

| Namespace | CPU Request | CPU Limit | Memory Request | Memory Limit | Pod Count |
|-----------|------------|-----------|---------------|-------------|-----------|
| {{ns_1_name}} | {{ns_1_cpu_req}} | {{ns_1_cpu_lim}} | {{ns_1_mem_req}} | {{ns_1_mem_lim}} | {{ns_1_pods}} |
| {{ns_2_name}} | {{ns_2_cpu_req}} | {{ns_2_cpu_lim}} | {{ns_2_mem_req}} | {{ns_2_mem_lim}} | {{ns_2_pods}} |

### 4.3 Cluster Services

#### CoreDNS Configuration

- **CoreDNS Version:** {{coredns_version}}
- **Custom Configuration:** {{coredns_custom_config}}
- **Upstream DNS Servers:** {{upstream_dns}}

#### Ingress Controller Setup

- **Ingress Controller:** {{ingress_controller}} (e.g., NGINX, Traefik, HAProxy)
- **Ingress Class:** {{ingress_class}}
- **TLS Termination:** {{tls_termination}}
- **External Load Balancer:** {{external_lb_config}}

#### Certificate Management (cert-manager)

- **cert-manager Version:** {{cert_manager_version}}
- **Issuers Configured:**
  - {{issuer_1}}: {{issuer_1_type}} ({{issuer_1_details}})
  - {{issuer_2}}: {{issuer_2_type}} ({{issuer_2_details}})

#### Storage Classes

| Storage Class | Provisioner | Reclaim Policy | Volume Binding | Purpose |
|--------------|-------------|---------------|----------------|---------|
| {{sc_1_name}} | {{sc_1_provisioner}} | {{sc_1_reclaim}} | {{sc_1_binding}} | {{sc_1_purpose}} |
| {{sc_2_name}} | {{sc_2_provisioner}} | {{sc_2_reclaim}} | {{sc_2_binding}} | {{sc_2_purpose}} |

### 4.4 Security & RBAC

#### RBAC Policies

<!-- GUIDANCE: Define all ClusterRoles, Roles, and bindings. Follow least-privilege principles.
     Map to the IAM roles defined in Section 3.3. -->

| Role | Type | Scope | Permissions | Bound To |
|------|------|-------|-------------|----------|
| {{rbac_1_name}} | {{rbac_1_type}} | {{rbac_1_scope}} | {{rbac_1_perms}} | {{rbac_1_binding}} |
| {{rbac_2_name}} | {{rbac_2_type}} | {{rbac_2_scope}} | {{rbac_2_perms}} | {{rbac_2_binding}} |

#### Pod Security Standards

- **Enforcement Level:** {{pss_level}} (Privileged / Baseline / Restricted)
- **Namespace Policies:**
  - {{pss_ns_1}}: {{pss_ns_1_level}}
  - {{pss_ns_2}}: {{pss_ns_2_level}}

#### Network Policies

- **Default Policy:** {{default_network_policy}}
- **Namespace Isolation:** {{namespace_isolation_config}}
- **Egress Controls:** {{egress_controls}}

#### Secrets Management Integration

- **Secrets Provider:** {{secrets_provider}} (e.g., Vault, AWS Secrets Manager, Azure Key Vault)
- **CSI Driver:** {{secrets_csi_driver}}
- **Rotation Policy:** {{secrets_rotation_policy}}

---

## 5. GitOps Workflow Implementation

<!-- GUIDANCE: Implement the GitOps layer once the container platform is operational and
     validated. GitOps becomes the primary deployment mechanism for all subsequent changes.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 5.1 GitOps Tooling Setup

#### Installation and Configuration

- **GitOps Tool:** {{gitops_tool_name}} (e.g., ArgoCD, Flux)
- **Version:** {{gitops_tool_version}}
- **Namespace:** {{gitops_namespace}}
- **High Availability:** {{gitops_ha_config}}

#### GitOps Tool Manifest

<!-- GUIDANCE: Include the installation manifests or Helm values used to deploy the
     GitOps tooling. This should be fully reproducible. -->

```yaml
# {{gitops_tool_name}} Installation Manifest
# Repository: {{gitops_repo_url}}
# Path: {{gitops_install_path}}

{{gitops_installation_manifest}}
```

### 5.2 Repository Structure

#### GitOps Repository Layout

<!-- GUIDANCE: Define the repository structure following GitOps best practices.
     Separate concerns between cluster configuration, infrastructure, and applications. -->

```
{{gitops_repo_name}}/
{{gitops_directory_tree}}
```

<!-- GUIDANCE: Example structure for reference:
```
gitops-repo/
├── clusters/
│   ├── dev/
│   ├── staging/
│   └── production/
├── infrastructure/
│   ├── base/
│   └── overlays/
│       ├── dev/
│       ├── staging/
│       └── production/
└── applications/
    ├── base/
    └── overlays/
        ├── dev/
        ├── staging/
        └── production/
```
-->

#### Environment Overlays

| Environment | Cluster | Namespace Pattern | Sync Policy | Approval Required |
|-------------|---------|-------------------|-------------|-------------------|
| dev | {{dev_cluster}} | {{dev_ns_pattern}} | {{dev_sync}} | {{dev_approval}} |
| staging | {{staging_cluster}} | {{staging_ns_pattern}} | {{staging_sync}} | {{staging_approval}} |
| production | {{prod_cluster}} | {{prod_ns_pattern}} | {{prod_sync}} | {{prod_approval}} |

### 5.3 Deployment Workflows

#### Application Deployment Patterns

- **Deployment Strategy:** {{deployment_strategy}} (e.g., rolling, blue-green, canary)
- **Sync Waves:** {{sync_wave_config}}
- **Health Checks:** {{health_check_config}}

#### Progressive Delivery Setup

- **Progressive Delivery Tool:** {{progressive_delivery_tool}} (e.g., Argo Rollouts, Flagger)
- **Canary Configuration:** {{canary_config}}
- **Analysis Templates:** {{analysis_templates}}

#### Rollback Procedures

1. {{rollback_step_1}}
2. {{rollback_step_2}}
3. {{rollback_step_3}}

#### Multi-Environment Promotion

- **Promotion Flow:** dev -> staging -> production
- **Promotion Triggers:** {{promotion_triggers}}
- **Gate Criteria:** {{gate_criteria}}
- **Automated Checks:** {{automated_promotion_checks}}

### 5.4 Access Control

#### Git Repository Permissions

| Team / Role | Repository Access | Branch Protection | Approval Required |
|-------------|------------------|-------------------|-------------------|
| {{git_team_1}} | {{git_access_1}} | {{git_branch_1}} | {{git_approval_1}} |
| {{git_team_2}} | {{git_access_2}} | {{git_branch_2}} | {{git_approval_2}} |

#### GitOps Tool RBAC

| Role | Projects | Clusters | Permissions |
|------|----------|----------|-------------|
| {{gitops_role_1}} | {{gitops_proj_1}} | {{gitops_cluster_1}} | {{gitops_perm_1}} |
| {{gitops_role_2}} | {{gitops_proj_2}} | {{gitops_cluster_2}} | {{gitops_perm_2}} |

#### Secret Management Integration

- **Secret Store:** {{gitops_secret_store}}
- **Sealed Secrets / External Secrets:** {{gitops_secret_method}}
- **Secret Sync Configuration:** {{gitops_secret_sync}}

#### Audit Logging

- **Audit Log Destination:** {{gitops_audit_destination}}
- **Retention Period:** {{gitops_audit_retention}}
- **Alerting on Sensitive Actions:** {{gitops_audit_alerts}}

---

## 6. Service Mesh Implementation

<!-- GUIDANCE: Deploy the service mesh after the container platform and GitOps layer are
     operational. The service mesh provides observability, security, and traffic management
     for service-to-service communication.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 6.1 Service Mesh Setup

#### Installation

- **Service Mesh:** {{mesh_name}} (e.g., Istio, Linkerd, Consul Connect)
- **Version:** {{mesh_version}}
- **Installation Method:** {{mesh_install_method}} (e.g., Helm, istioctl, linkerd CLI)
- **Profile:** {{mesh_profile}}

#### Control Plane Configuration

- **Control Plane Components:** {{mesh_cp_components}}
- **High Availability:** {{mesh_ha_config}}
- **Resource Allocation:** {{mesh_resource_allocation}}

#### Data Plane Injection

- **Injection Method:** {{mesh_injection_method}} (e.g., automatic, manual)
- **Injected Namespaces:** {{mesh_injected_namespaces}}
- **Excluded Namespaces:** {{mesh_excluded_namespaces}}

#### CLI / Manifest -- Service Mesh Installation

<!-- GUIDANCE: Include the installation commands or manifests. The service mesh must
     be reproducibly installable from these artifacts. -->

```{{mesh_config_language}}
# Service Mesh Installation
# Repository: {{mesh_repo_url}}
# Path: {{mesh_install_path}}

{{mesh_installation_code}}
```

### 6.2 Traffic Management

#### Load Balancing Policies

- **Algorithm:** {{lb_algorithm}}
- **Session Affinity:** {{session_affinity_config}}
- **Health Check Configuration:** {{mesh_health_check}}

#### Circuit Breakers and Retry Policies

- **Circuit Breaker Thresholds:**
  - Consecutive Errors: {{cb_consecutive_errors}}
  - Interval: {{cb_interval}}
  - Max Ejection: {{cb_max_ejection}}
- **Retry Policy:**
  - Max Retries: {{retry_max}}
  - Retry On: {{retry_on_conditions}}
  - Per-Try Timeout: {{retry_timeout}}

#### Canary Deployment Configuration

- **Traffic Splitting Method:** {{canary_split_method}}
- **Metric-Based Routing:** {{metric_routing_config}}
- **Automated Rollback Triggers:** {{canary_rollback_triggers}}

#### Rate Limiting

- **Global Rate Limits:** {{global_rate_limits}}
- **Per-Service Limits:** {{per_service_rate_limits}}
- **Rate Limit Backend:** {{rate_limit_backend}}

### 6.3 Security Policies

#### mTLS Configuration

- **mTLS Mode:** {{mtls_mode}} (e.g., STRICT, PERMISSIVE)
- **Certificate Authority:** {{mesh_ca}}
- **Certificate Rotation:** {{mesh_cert_rotation}}

#### Authorization Policies

<!-- GUIDANCE: Define service-to-service authorization rules. Default to deny-all
     and explicitly allow required communication paths. -->

- **Default Policy:** {{mesh_default_authz}}
- **Service Authorization Rules:**
  - {{authz_rule_1}}
  - {{authz_rule_2}}
  - {{authz_rule_3}}

#### Network Segmentation

- {{mesh_segment_1}}
- {{mesh_segment_2}}

### 6.4 Service Discovery & Observability

#### Service Registry Integration

- **Service Registry:** {{service_registry}}
- **Registration Method:** {{registration_method}}
- **DNS Integration:** {{mesh_dns_integration}}

#### Health Checking

- **Active Health Checks:** {{active_health_checks}}
- **Passive Health Checks:** {{passive_health_checks}}
- **Outlier Detection:** {{outlier_detection_config}}

#### Distributed Tracing

- **Tracing Backend:** {{tracing_backend}} (e.g., Jaeger, Zipkin, Tempo)
- **Sampling Rate:** {{tracing_sampling_rate}}
- **Trace Propagation:** {{trace_propagation_headers}}

#### Dependency Mapping

- **Visualization Tool:** {{dependency_viz_tool}}
- **Service Graph:** {{service_graph_config}}

---

## 7. Developer Experience Platform

<!-- GUIDANCE: Build the developer experience layer to enable self-service workflows and
     maximize developer productivity. This layer depends on all prior platform layers.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 7.1 Developer Portal

#### Service Catalog Setup

- **Portal Platform:** {{portal_platform}} (e.g., Backstage, Port, custom)
- **Service Catalog Entries:** {{catalog_entries}}
- **Plugin Configuration:** {{portal_plugins}}

#### API Documentation

- **Documentation Tool:** {{api_doc_tool}}
- **API Registry:** {{api_registry}}
- **Auto-Generation:** {{api_doc_autogen}}

#### Self-Service Workflows

| Workflow | Description | Approval Required | SLA |
|----------|-------------|-------------------|-----|
| {{workflow_1}} | {{workflow_1_desc}} | {{workflow_1_approval}} | {{workflow_1_sla}} |
| {{workflow_2}} | {{workflow_2_desc}} | {{workflow_2_approval}} | {{workflow_2_sla}} |
| {{workflow_3}} | {{workflow_3_desc}} | {{workflow_3_approval}} | {{workflow_3_sla}} |

### 7.2 CI/CD Integration

#### Pipeline Architecture

- **CI Platform:** {{ci_platform}}
- **CD Mechanism:** {{cd_mechanism}} (GitOps-driven via Section 5)
- **Artifact Registry:** {{artifact_registry}}
- **Image Scanning:** {{image_scanning_tool}}

#### Pipeline Configuration

<!-- GUIDANCE: Include the pipeline template or reference the pipeline-as-code repository.
     Pipelines should enforce security scanning, testing, and quality gates. -->

```yaml
# CI/CD Pipeline Template
# Repository: {{pipeline_repo_url}}
# Path: {{pipeline_path}}

{{pipeline_yaml_code}}
```

### 7.3 Development Tools

#### Local Development Setup

- **Local Kubernetes:** {{local_k8s_tool}} (e.g., minikube, kind, k3d)
- **Development Proxy:** {{dev_proxy_tool}} (e.g., Telepresence, Bridge to Kubernetes)
- **Configuration:** {{local_dev_config}}

#### Remote Development Environments

- **Remote Dev Tool:** {{remote_dev_tool}} (e.g., Codespaces, Gitpod, DevPod)
- **Environment Specification:** {{remote_dev_spec}}
- **Resource Limits:** {{remote_dev_limits}}

#### Testing Frameworks

- **Unit Testing:** {{unit_test_framework}}
- **Integration Testing:** {{integration_test_framework}}
- **E2E Testing:** {{e2e_test_framework}}

### 7.4 Self-Service Capabilities

#### Environment Provisioning

- **Provisioning Method:** {{env_provisioning_method}}
- **Environment Types:** {{env_types}}
- **Lifecycle Management:** {{env_lifecycle}}
- **Auto-Cleanup Policy:** {{env_auto_cleanup}}

#### Database Creation

- **Supported Databases:** {{supported_databases}}
- **Provisioning Method:** {{db_provisioning_method}}
- **Backup Integration:** {{db_backup_integration}}

#### Configuration Management

- **Configuration Store:** {{config_store}}
- **Environment-Specific Config:** {{env_config_method}}
- **Secret Injection:** {{secret_injection_method}}

---

## 8. Platform Integration & Security Hardening

<!-- GUIDANCE: This section focuses on cross-cutting concerns that span all platform layers.
     Complete after all individual layers are operational.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 8.1 End-to-End Security

#### Platform-Wide Security Policies

- {{platform_security_policy_1}}
- {{platform_security_policy_2}}
- {{platform_security_policy_3}}

#### Cross-Layer Authentication

- **Authentication Flow:** {{cross_layer_auth_flow}}
- **Identity Provider:** {{identity_provider}}
- **Token Management:** {{token_management}}
- **SSO Integration:** {{sso_integration}}

#### Encryption Validation

| Layer | Encryption at Rest | Encryption in Transit | Key Management |
|-------|-------------------|----------------------|----------------|
| Foundation | {{enc_foundation_rest}} | {{enc_foundation_transit}} | {{enc_foundation_keys}} |
| Container Platform | {{enc_container_rest}} | {{enc_container_transit}} | {{enc_container_keys}} |
| Application | {{enc_app_rest}} | {{enc_app_transit}} | {{enc_app_keys}} |

### 8.2 Integrated Monitoring

#### Metrics Aggregation

- **Metrics Platform:** {{metrics_platform}} (e.g., Prometheus, Datadog, CloudWatch)
- **Grafana Version:** {{grafana_version}}
- **Retention Period:** {{metrics_retention}}
- **Federation:** {{metrics_federation}}

#### Log Collection and Analysis

- **Log Pipeline:** {{log_pipeline}}
- **Log Storage:** {{log_storage}}
- **Log Analysis Tool:** {{log_analysis_tool}}

#### Distributed Tracing

- **Tracing Integration:** {{tracing_integration}}
- **Correlation IDs:** {{correlation_id_strategy}}

#### Dashboard Creation

| Dashboard | Audience | Key Metrics | Refresh Rate |
|-----------|----------|-------------|--------------|
| {{dash_1_name}} | {{dash_1_audience}} | {{dash_1_metrics}} | {{dash_1_refresh}} |
| {{dash_2_name}} | {{dash_2_audience}} | {{dash_2_metrics}} | {{dash_2_refresh}} |

#### Monitoring Configuration

<!-- GUIDANCE: Include the monitoring stack configuration or reference the configuration
     repository. Ensure all platform layers are covered. -->

```yaml
# Monitoring Stack Configuration
# Repository: {{monitoring_repo_url}}
# Path: {{monitoring_config_path}}

{{monitoring_config_code}}
```

### 8.3 Backup & Disaster Recovery

#### Platform Backup Strategy

| Component | Backup Method | Frequency | Retention | Storage Location |
|-----------|--------------|-----------|-----------|-----------------|
| {{backup_1_component}} | {{backup_1_method}} | {{backup_1_freq}} | {{backup_1_retention}} | {{backup_1_location}} |
| {{backup_2_component}} | {{backup_2_method}} | {{backup_2_freq}} | {{backup_2_retention}} | {{backup_2_location}} |
| {{backup_3_component}} | {{backup_3_method}} | {{backup_3_freq}} | {{backup_3_retention}} | {{backup_3_location}} |

#### DR Procedures

- **DR Strategy:** {{dr_strategy}} (e.g., active-passive, active-active, pilot light)
- **Failover Procedure:** {{failover_procedure}}
- **Failback Procedure:** {{failback_procedure}}

#### RTO / RPO Validation

| Service Tier | RTO Target | RTO Validated | RPO Target | RPO Validated |
|-------------|-----------|---------------|-----------|---------------|
| {{tier_1_name}} | {{tier_1_rto}} | {{tier_1_rto_valid}} | {{tier_1_rpo}} | {{tier_1_rpo_valid}} |
| {{tier_2_name}} | {{tier_2_rto}} | {{tier_2_rto_valid}} | {{tier_2_rpo}} | {{tier_2_rpo_valid}} |

#### Recovery Testing

- **Last DR Test Date:** {{last_dr_test}}
- **Test Results:** {{dr_test_results}}
- **Next Scheduled Test:** {{next_dr_test}}

---

## 9. Platform Operations & Automation

<!-- GUIDANCE: Define the operational model for the platform. This section should enable
     the operations team to manage the platform day-to-day without requiring the
     implementation team. -->

### 9.1 Monitoring & Alerting

#### SLA / SLO Monitoring

| Service | SLO | SLI | Current Status | Alert Threshold |
|---------|-----|-----|---------------|-----------------|
| {{slo_1_service}} | {{slo_1_target}} | {{slo_1_indicator}} | {{slo_1_status}} | {{slo_1_alert}} |
| {{slo_2_service}} | {{slo_2_target}} | {{slo_2_indicator}} | {{slo_2_status}} | {{slo_2_alert}} |

#### Alert Routing and Escalation

| Alert Severity | Notification Channel | Response Time | Escalation Path |
|---------------|---------------------|---------------|-----------------|
| Critical | {{alert_critical_channel}} | {{alert_critical_response}} | {{alert_critical_escalation}} |
| Warning | {{alert_warning_channel}} | {{alert_warning_response}} | {{alert_warning_escalation}} |
| Info | {{alert_info_channel}} | {{alert_info_response}} | {{alert_info_escalation}} |

#### Incident Response Procedures

1. {{incident_step_1}}
2. {{incident_step_2}}
3. {{incident_step_3}}
4. {{incident_step_4}}

### 9.2 Maintenance Procedures

#### Upgrade Procedures

- **Kubernetes Upgrades:** {{k8s_upgrade_procedure}}
- **Service Mesh Upgrades:** {{mesh_upgrade_procedure}}
- **GitOps Tool Upgrades:** {{gitops_upgrade_procedure}}
- **OS / Node Upgrades:** {{node_upgrade_procedure}}

#### Patch Management

- **Patching Cadence:** {{patching_cadence}}
- **Critical Patch SLA:** {{critical_patch_sla}}
- **Patch Testing Process:** {{patch_testing_process}}

#### Certificate Rotation

- **Rotation Schedule:** {{cert_rotation_schedule}}
- **Automated Rotation:** {{cert_auto_rotation}}
- **Manual Rotation Procedures:** {{cert_manual_rotation}}

#### Capacity Management

- **Capacity Review Cadence:** {{capacity_review_cadence}}
- **Scaling Triggers:** {{scaling_triggers}}
- **Capacity Planning Horizon:** {{capacity_planning_horizon}}

### 9.3 Operational Runbooks

<!-- GUIDANCE: List all runbooks that have been created. Each runbook should be a
     standalone document that can be followed by an on-call engineer. -->

| Runbook | Purpose | Location | Last Updated |
|---------|---------|----------|-------------|
| {{runbook_1_name}} | {{runbook_1_purpose}} | {{runbook_1_location}} | {{runbook_1_updated}} |
| {{runbook_2_name}} | {{runbook_2_purpose}} | {{runbook_2_location}} | {{runbook_2_updated}} |
| {{runbook_3_name}} | {{runbook_3_purpose}} | {{runbook_3_location}} | {{runbook_3_updated}} |

#### Common Operational Tasks

- {{ops_task_1}}
- {{ops_task_2}}
- {{ops_task_3}}

#### Troubleshooting Guides

- {{troubleshooting_guide_1}}
- {{troubleshooting_guide_2}}

#### Emergency Procedures

- {{emergency_procedure_1}}
- {{emergency_procedure_2}}

#### Recovery Playbooks

- {{recovery_playbook_1}}
- {{recovery_playbook_2}}

---

## 10. Platform Validation & Testing

<!-- GUIDANCE: Comprehensive validation of the entire platform before handoff.
     All tests must pass before proceeding to knowledge transfer and architect review. -->

### 10.1 Functional Testing

#### Component Testing

- [ ] Foundation infrastructure components individually validated
- [ ] Container platform cluster health verified
- [ ] GitOps sync operations confirmed functional
- [ ] Service mesh data plane injection operational
- [ ] Developer portal accessible and functional

#### Integration Testing

- [ ] Cross-layer communication validated
- [ ] Authentication flows tested end-to-end
- [ ] Deployment pipelines tested from commit to production
- [ ] Monitoring and alerting pipeline validated
- [ ] Backup and restore procedures tested

#### End-to-End Testing

- [ ] Sample application deployed through full pipeline
- [ ] Traffic routing and load balancing validated
- [ ] Self-service workflows tested by developer persona
- [ ] DR failover and failback tested
- [ ] Full platform restart validated

### 10.2 Security Validation

#### Penetration Testing

- **Scope:** {{pentest_scope}}
- **Performed By:** {{pentest_team}}
- **Date:** {{pentest_date}}
- **Findings Summary:** {{pentest_findings}}
- **Remediation Status:** {{pentest_remediation}}

#### Compliance Scanning

- **Scanning Tool:** {{compliance_scan_tool}}
- **Frameworks Scanned:** {{compliance_frameworks}}
- **Results:** {{compliance_results}}

#### Vulnerability Assessment

- **Container Image Scanning:** {{image_scan_results}}
- **Infrastructure Scanning:** {{infra_scan_results}}
- **Dependency Scanning:** {{dependency_scan_results}}

### 10.3 Disaster Recovery Testing

- [ ] Backup restoration verified for all critical components
- [ ] Failover procedures executed and timed against RTO targets
- [ ] Data integrity checks passed after recovery
- [ ] Cross-region recovery validated (if applicable)
- [ ] Communication plan executed during DR test

### 10.4 Load Testing

#### Load Test Configuration

<!-- GUIDANCE: Include the load test scripts or reference the testing repository.
     Tests should validate that the platform meets performance requirements defined
     in the architecture document. -->

```javascript
// Load Test Script (K6 Example)
// Repository: {{loadtest_repo_url}}
// Path: {{loadtest_path}}

import http from 'k6/http';
import { check, sleep } from 'k6';

export const options = {
  stages: [
    { duration: '{{ramp_up_duration}}', target: {{ramp_up_target}} },
    { duration: '{{steady_state_duration}}', target: {{steady_state_target}} },
    { duration: '{{ramp_down_duration}}', target: {{ramp_down_target}} },
  ],
  thresholds: {
    http_req_duration: ['p(95)<{{p95_threshold_ms}}'],
    http_req_failed: ['rate<{{error_rate_threshold}}'],
  },
};

export default function () {
  const res = http.get('{{load_test_endpoint}}');
  check(res, {
    'status is 200': (r) => r.status === 200,
    'response time < {{response_threshold_ms}}ms': (r) => r.timings.duration < {{response_threshold_ms}},
  });
  sleep(1);
}
```

#### Load Test Results

| Metric | Target | Result | Status |
|--------|--------|--------|--------|
| p95 Response Time | {{p95_target}} | {{p95_result}} | {{p95_status}} |
| Error Rate | {{error_target}} | {{error_result}} | {{error_status}} |
| Throughput | {{throughput_target}} | {{throughput_result}} | {{throughput_status}} |
| Max Concurrent Users | {{concurrent_target}} | {{concurrent_result}} | {{concurrent_status}} |

---

## 11. Knowledge Transfer & Documentation

<!-- GUIDANCE: Ensure all knowledge is transferred to the operations and development
     teams before concluding the implementation engagement. -->

### 11.1 Platform Documentation

| Document | Description | Location | Status |
|----------|-------------|----------|--------|
| Architecture Documentation | Platform architecture and design decisions | {{arch_doc_location}} | {{arch_doc_status}} |
| Operational Procedures | Day-to-day operations guide | {{ops_doc_location}} | {{ops_doc_status}} |
| Configuration Reference | All platform configuration parameters | {{config_doc_location}} | {{config_doc_status}} |
| API Reference | Platform API documentation | {{api_doc_location}} | {{api_doc_status}} |

### 11.2 Training Materials

#### Developer Guides

- {{dev_guide_1}}
- {{dev_guide_2}}
- {{dev_guide_3}}

#### Operations Training

| Topic | Audience | Format | Duration | Delivered |
|-------|----------|--------|----------|-----------|
| {{training_1_topic}} | {{training_1_audience}} | {{training_1_format}} | {{training_1_duration}} | {{training_1_delivered}} |
| {{training_2_topic}} | {{training_2_audience}} | {{training_2_format}} | {{training_2_duration}} | {{training_2_delivered}} |

#### Security Best Practices

- {{security_practice_1}}
- {{security_practice_2}}
- {{security_practice_3}}

### 11.3 Handoff Procedures

#### Team Responsibilities

| Team | Responsibilities | Escalation Contact |
|------|-----------------|-------------------|
| {{team_1_name}} | {{team_1_responsibilities}} | {{team_1_contact}} |
| {{team_2_name}} | {{team_2_responsibilities}} | {{team_2_contact}} |
| {{team_3_name}} | {{team_3_responsibilities}} | {{team_3_contact}} |

#### Escalation Procedures

1. {{escalation_level_1}}
2. {{escalation_level_2}}
3. {{escalation_level_3}}

#### Support Model

- **Support Tiers:** {{support_tiers}}
- **On-Call Rotation:** {{oncall_rotation}}
- **Vendor Support Contacts:** {{vendor_support}}

---

## 12. Implementation Review with Architect

<!-- GUIDANCE: This is the final review with the architect to validate that the
     implementation aligns with the approved architecture. This section must be
     completed and signed off before the platform is considered production-ready.

     CRITICAL RULE: All platform implementation must align with the approved infrastructure
     architecture. Any deviations require architect approval. -->

### 12.1 Implementation Validation

#### Architecture Alignment Verification

- [ ] All infrastructure components match the approved architecture
- [ ] Network topology implemented as designed
- [ ] Security controls match architecture requirements
- [ ] Performance characteristics meet defined thresholds
- [ ] Scalability mechanisms implemented as specified

#### Deviation Documentation

<!-- GUIDANCE: Document ANY deviations from the approved architecture. Each deviation
     must have architect approval before the platform can be accepted. -->

| Deviation | Reason | Impact | Architect Approved | Date |
|-----------|--------|--------|--------------------|------|
| {{deviation_1}} | {{deviation_1_reason}} | {{deviation_1_impact}} | {{deviation_1_approved}} | {{deviation_1_date}} |
| {{deviation_2}} | {{deviation_2_reason}} | {{deviation_2_impact}} | {{deviation_2_approved}} | {{deviation_2_date}} |

### 12.2 Lessons Learned

#### What Went Well

- {{lesson_positive_1}}
- {{lesson_positive_2}}
- {{lesson_positive_3}}

#### Challenges Encountered

- {{lesson_challenge_1}}
- {{lesson_challenge_2}}
- {{lesson_challenge_3}}

#### Process Improvements

- {{lesson_improvement_1}}
- {{lesson_improvement_2}}

### 12.3 Future Evolution

#### Enhancement Opportunities

- {{enhancement_1}}
- {{enhancement_2}}
- {{enhancement_3}}

#### Technical Debt

| Item | Description | Priority | Estimated Effort | Target Resolution |
|------|-------------|----------|-----------------|-------------------|
| {{debt_1_item}} | {{debt_1_description}} | {{debt_1_priority}} | {{debt_1_effort}} | {{debt_1_target}} |
| {{debt_2_item}} | {{debt_2_description}} | {{debt_2_priority}} | {{debt_2_effort}} | {{debt_2_target}} |

#### Upgrade Planning

- **Next Kubernetes Upgrade:** {{next_k8s_upgrade}}
- **Service Mesh Upgrade Path:** {{mesh_upgrade_path}}
- **GitOps Tool Upgrade Path:** {{gitops_upgrade_path}}
- **Security Patch Cadence:** {{security_patch_cadence}}

### 12.4 Sign-off & Acceptance

#### Architect Approval

> I have reviewed the platform implementation and confirm it aligns with the approved
> infrastructure architecture. All documented deviations have been reviewed and accepted.

- **Architect Name:** {{architect_name}}
- **Signature:** ___________________________
- **Date:** {{architect_signoff_date}}

#### Stakeholder Acceptance

| Stakeholder | Role | Accepted | Date | Comments |
|-------------|------|----------|------|----------|
| {{stakeholder_1_name}} | {{stakeholder_1_role}} | {{stakeholder_1_accepted}} | {{stakeholder_1_date}} | {{stakeholder_1_comments}} |
| {{stakeholder_2_name}} | {{stakeholder_2_role}} | {{stakeholder_2_accepted}} | {{stakeholder_2_date}} | {{stakeholder_2_comments}} |

#### Go-Live Authorization

- [ ] All validation tests passed
- [ ] Security review completed and approved
- [ ] DR testing completed successfully
- [ ] Knowledge transfer completed
- [ ] Operational runbooks reviewed and approved
- [ ] Monitoring and alerting confirmed operational
- [ ] All deviations documented and architect-approved
- [ ] Go-live date confirmed: {{go_live_date}}

---

## 13. Platform Metrics & KPIs

<!-- GUIDANCE: Define the metrics that will be used to measure platform success on an
     ongoing basis. These should align with the objectives defined in Section 1. -->

### 13.1 Technical Metrics

| Metric | Target | Current | Measurement Method |
|--------|--------|---------|--------------------|
| Platform Availability | {{availability_target}} (e.g., 99.9%) | {{availability_current}} | {{availability_method}} |
| API Response Time (p95) | {{response_time_target}} | {{response_time_current}} | {{response_time_method}} |
| Resource Utilization (CPU) | {{cpu_util_target}} | {{cpu_util_current}} | {{cpu_util_method}} |
| Resource Utilization (Memory) | {{mem_util_target}} | {{mem_util_current}} | {{mem_util_method}} |
| Error Rate | {{error_rate_target}} | {{error_rate_current}} | {{error_rate_method}} |

### 13.2 Business Metrics

| Metric | Target | Current | Measurement Method |
|--------|--------|---------|--------------------|
| Developer Productivity (deploys/dev/week) | {{dev_productivity_target}} | {{dev_productivity_current}} | {{dev_productivity_method}} |
| Deployment Frequency | {{deploy_freq_target}} | {{deploy_freq_current}} | {{deploy_freq_method}} |
| Lead Time for Changes | {{lead_time_target}} | {{lead_time_current}} | {{lead_time_method}} |
| Mean Time to Recovery (MTTR) | {{mttr_target}} | {{mttr_current}} | {{mttr_method}} |
| Change Failure Rate | {{cfr_target}} | {{cfr_current}} | {{cfr_method}} |

### 13.3 Operational Metrics

| Metric | Target | Current | Measurement Method |
|--------|--------|---------|--------------------|
| Incident Response Time | {{incident_response_target}} | {{incident_response_current}} | {{incident_response_method}} |
| Patch Compliance | {{patch_compliance_target}} | {{patch_compliance_current}} | {{patch_compliance_method}} |
| Cost per Workload | {{cost_workload_target}} | {{cost_workload_current}} | {{cost_workload_method}} |
| Automation Coverage | {{automation_target}} | {{automation_current}} | {{automation_method}} |
| Runbook Coverage | {{runbook_coverage_target}} | {{runbook_coverage_current}} | {{runbook_coverage_method}} |

---

## Appendices

### Appendix A: Configuration Reference

<!-- GUIDANCE: Provide a comprehensive reference of all configurable parameters across
     the platform. This should serve as a quick-reference for operations teams. -->

| Component | Parameter | Value | Description |
|-----------|-----------|-------|-------------|
| {{config_component_1}} | {{config_param_1}} | {{config_value_1}} | {{config_desc_1}} |
| {{config_component_2}} | {{config_param_2}} | {{config_value_2}} | {{config_desc_2}} |
| {{config_component_3}} | {{config_param_3}} | {{config_value_3}} | {{config_desc_3}} |

### Appendix B: Troubleshooting Guide

<!-- GUIDANCE: Document common issues and their resolutions. This should be a living
     document updated as new issues are discovered. -->

| Symptom | Possible Cause | Resolution | Runbook Reference |
|---------|---------------|------------|-------------------|
| {{symptom_1}} | {{cause_1}} | {{resolution_1}} | {{runbook_ref_1}} |
| {{symptom_2}} | {{cause_2}} | {{resolution_2}} | {{runbook_ref_2}} |
| {{symptom_3}} | {{cause_3}} | {{resolution_3}} | {{runbook_ref_3}} |

### Appendix C: Security Controls Matrix

<!-- GUIDANCE: Map security controls to compliance frameworks and platform components.
     This matrix should demonstrate compliance coverage. -->

| Control ID | Description | Framework | Platform Layer | Implementation | Status |
|-----------|-------------|-----------|---------------|----------------|--------|
| {{ctrl_1_id}} | {{ctrl_1_desc}} | {{ctrl_1_framework}} | {{ctrl_1_layer}} | {{ctrl_1_impl}} | {{ctrl_1_status}} |
| {{ctrl_2_id}} | {{ctrl_2_desc}} | {{ctrl_2_framework}} | {{ctrl_2_layer}} | {{ctrl_2_impl}} | {{ctrl_2_status}} |
| {{ctrl_3_id}} | {{ctrl_3_desc}} | {{ctrl_3_framework}} | {{ctrl_3_layer}} | {{ctrl_3_impl}} | {{ctrl_3_status}} |

### Appendix D: Integration Points

<!-- GUIDANCE: Document all integration points between the platform and external systems.
     Include authentication methods, data flows, and SLAs. -->

| Integration | Source | Destination | Protocol | Auth Method | SLA | Owner |
|-------------|--------|-------------|----------|-------------|-----|-------|
| {{integ_1_name}} | {{integ_1_source}} | {{integ_1_dest}} | {{integ_1_protocol}} | {{integ_1_auth}} | {{integ_1_sla}} | {{integ_1_owner}} |
| {{integ_2_name}} | {{integ_2_source}} | {{integ_2_dest}} | {{integ_2_protocol}} | {{integ_2_auth}} | {{integ_2_sla}} | {{integ_2_owner}} |
| {{integ_3_name}} | {{integ_3_source}} | {{integ_3_dest}} | {{integ_3_protocol}} | {{integ_3_auth}} | {{integ_3_sla}} | {{integ_3_owner}} |

---

## Document Information

| Field | Value |
|-------|-------|
| **Version** | {{document_version}} |
| **Date** | {{document_date}} |
| **Author** | {{document_author}} |
| **Next Review Date** | {{next_review_date}} |

## Approval Signatures

| Role | Name | Signature | Date |
|------|------|-----------|------|
| Implementation Lead | {{impl_lead_name}} | ___________________________ | {{impl_lead_date}} |
| Infrastructure Architect | {{architect_name}} | ___________________________ | {{architect_sign_date}} |
| Security Lead | {{security_lead_name}} | ___________________________ | {{security_lead_date}} |
| Operations Lead | {{ops_lead_name}} | ___________________________ | {{ops_lead_date}} |
| Project Sponsor | {{sponsor_name}} | ___________________________ | {{sponsor_date}} |

---

> **CRITICAL RULE:** All platform implementation must align with the approved infrastructure
> architecture. Any deviations require architect approval.
