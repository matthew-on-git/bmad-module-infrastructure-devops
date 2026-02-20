# BMad Infrastructure & DevOps Module

A custom [BMad Method](https://github.com/bmad-code-org/BMAD-METHOD) module that adds infrastructure and DevOps capabilities through **Alex**, a DevOps Infrastructure Specialist & Platform Engineer agent.

## Quickstart

```bash
# 1. Install this module into your project
npm install bmad-module-infrastructure-devops

# 2. Run the BMad installer
npx bmad-method install

# 3. When prompted for custom modules, point the installer at:
#    node_modules/bmad-module-infrastructure-devops/src
```

The installer will copy the module's agents, workflows, templates, and data into your project's `_bmad/infra/` directory and prompt you to configure your infrastructure preferences.

## What's Included

### Agent: Alex

A 15+ year DevSecOps and Platform Engineering specialist who guides you through infrastructure architecture design, validation, and implementation.

**Menu Commands:**

| Code | Command | Description |
|------|---------|-------------|
| RI | Review Infrastructure | Systematic review of existing infrastructure against best practices |
| VI | Validate Infrastructure | Comprehensive validation of changes before deployment |
| IA | Infrastructure Architecture | Create infrastructure architecture document from template |
| PI | Platform Implementation | Create platform implementation plan from approved architecture |
| CK | Checklist | Run the full 16-section infrastructure validation checklist |
| CH | Chat | Chat with Alex about infrastructure, DevOps, or platform engineering |

### Workflows

- **Review Infrastructure** - Thorough review with incremental or rapid assessment modes, architectural escalation assessment, and BMad integration checks
- **Validate Infrastructure** - Pre-deployment validation with architecture design review gate, 16-section compliance checking, and signoff recommendations

### Templates

- **Infrastructure Architecture** - Comprehensive architecture document covering cloud providers, IaC, networking, compute, security, monitoring, CI/CD, and DR
- **Platform Implementation** - Detailed implementation plan for container platforms, GitOps, service mesh, and developer experience

### Checklist

A 16-section infrastructure validation checklist covering:

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
11. BMad Workflow Integration
12. Architecture Documentation Validation
13. Container Platform Validation
14. GitOps Workflows Validation
15. Service Mesh Validation
16. Developer Experience Platform Validation

## Installation

This is a **custom module** — it is not bundled with the BMad installer. You install the npm package first, then the BMad installer wires it into your project.

### Prerequisites

- Node.js >= 22.0.0
- An existing project (or a new directory) where you want to set up BMad

### Step-by-Step

1. **Install the module** into your project's `node_modules`:

   ```bash
   npm install bmad-module-infrastructure-devops
   ```

2. **Run the BMad installer**:

   ```bash
   npx bmad-method install
   ```

3. **Select this module** when the installer reaches the custom module step. Point it at:

   ```text
   node_modules/bmad-module-infrastructure-devops/src
   ```

4. **Answer the configuration prompts** (see [Configuration](#configuration) below).

The installer copies the module contents into `_bmad/infra/` and registers it in your project's `_bmad/_config/manifest.yaml`.

## Configuration

The installer's Configuration Gateway offers **Express Setup** (accept all defaults) or **Customize** (choose per-module). If you customize, you'll be prompted for:

| Setting | Options | Default |
|---------|---------|---------|
| Cloud provider | AWS, Azure, GCP, Bare Metal, Hybrid | AWS |
| Container platform | Kubernetes, Docker Compose, Nomad, None | Kubernetes |
| IaC tool | Terraform/OpenTofu, Pulumi, Ansible, CloudFormation, Other | Terraform |
| GitOps tool | ArgoCD, Flux, None | ArgoCD |

With Express Setup, all defaults are applied automatically. Either way, selections are stored in `_bmad/_config/module-configs.yaml` and used by Alex to tailor recommendations to your stack.

## Integration Points

This module integrates with the core BMad workflow at three stages:

1. **After Architecture Phase** - Architect triggers infrastructure design
2. **Parallel to Development** - Infrastructure implementation proceeds alongside application work
3. **Before Deployment** - Infrastructure validation occurs prior to application deployment

Alex collaborates with other BMad agents:

- **Architect** - Design review gates and architectural escalation
- **Development agents** - Environment provisioning and platform support
- **Product Owner** - PRD alignment and non-functional requirements

## Module Structure

```text
src/
  agents/
    devops.agent.yaml        # Alex agent definition
  workflows/
    review-infrastructure/   # Infrastructure review workflow (3 steps)
    validate-infrastructure/ # Pre-deployment validation workflow (4 steps)
  templates/
    infrastructure-architecture-tmpl.md
    platform-implementation-tmpl.md
  data/
    infrastructure-checklist.md
  module.yaml                # Module manifest and config prompts
  module-help.csv            # Help entries for the BMad help system
```

## Development

```bash
npm install              # Install dependencies
npm test                 # Run all checks (schemas, lint, format)
npm run lint             # Run linting only
npm run lint:fix         # Auto-fix lint issues
npm run format:fix       # Auto-fix formatting
```

### Schema Validation

Agent YAML files are validated against the BMad agent schema:

```bash
npm run test:schemas     # Run agent schema tests
npm run validate:schemas # Validate agent schema compliance
```

## Publishing

```bash
npm run release          # Patch release (0.1.0 -> 0.1.1)
npm run release:minor    # Minor release (0.1.0 -> 0.2.0)
npm run release:major    # Major release (0.1.0 -> 1.0.0)
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on submitting issues and pull requests.

## License

MIT License - see [LICENSE](LICENSE) for details.

---

**BMad Infrastructure & DevOps Module** - Part of the [BMad Method](https://github.com/bmad-code-org/BMAD-METHOD) ecosystem.
