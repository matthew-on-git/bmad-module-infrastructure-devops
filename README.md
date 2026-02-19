# BMad Infrastructure & DevOps Module

An installable BMad Method module that adds comprehensive infrastructure and DevOps capabilities through Alex, a DevOps Infrastructure Specialist & Platform Engineer agent.

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

### Via BMad Installer (Recommended)

```bash
npx bmad-method install
```

Select "Infrastructure & DevOps" during module selection.

### Via npm

```bash
npm install bmad-module-infrastructure-devops
```

## Configuration

During installation, you'll be asked to configure:

- **Cloud provider** - AWS, Azure, GCP, bare metal, or hybrid
- **Container platform** - Kubernetes, Docker Compose, Nomad, or none
- **IaC tool** - Terraform/OpenTofu, Pulumi, Ansible, CloudFormation, or other
- **GitOps tool** - ArgoCD, Flux, or none

## Integration Points

This module integrates with the core BMad workflow at three stages:

1. **After Architecture Phase** - Architect triggers infrastructure design
2. **Parallel to Development** - Infrastructure implementation proceeds alongside application work
3. **Before Deployment** - Infrastructure validation occurs prior to application deployment

Alex collaborates with other BMad agents:

- **Architect** - Design review gates and architectural escalation
- **Development agents** - Environment provisioning and platform support
- **Product Owner** - PRD alignment and non-functional requirements

## Publishing

```bash
npm run release          # Patch release
npm run release:minor    # Minor release
npm run release:major    # Major release
```

## Development

```bash
npm install              # Install dependencies
npm run lint             # Run linting
npm run format:fix       # Fix formatting
npm test                 # Run tests
```

## License

MIT License - see [LICENSE](LICENSE) for details.

---

**BMad Infrastructure & DevOps Module** - Part of the [BMad Method](https://github.com/bmad-code-org/BMAD-METHOD) ecosystem.
