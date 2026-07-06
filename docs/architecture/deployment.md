# Deployment

## Deployment goals

ConnectHub should be deployable in a way that mirrors modern production cloud native systems while remaining easy to run for learning and review.

The deployment model should support:

- local developer workflows
- containerized execution
- Kubernetes-based environments
- OpenShift-friendly packaging and conventions

## Target environments

### Local development

- Run services in containers or directly from the IDE when implementation is available.
- Use lightweight local dependencies where possible.
- Keep startup instructions simple and reproducible.

### Kubernetes

- Use a layered manifest approach with base resources and environment-specific overlays.
- Separate application configuration from container images.
- Treat health checks, resource requests, and service discovery as first-class deployment concerns.

### OpenShift

- Keep manifests compatible with OpenShift security and routing expectations.
- Prefer deployment patterns that do not rely on privileged assumptions.
- Document any OpenShift-specific differences when they are introduced.

## Platform concerns

### Configuration and secrets

- Non-sensitive configuration should be externalized.
- Secrets should not be committed to the repository.
- Environment-specific values should be documented and generated through deployment tooling or manual bootstrap steps.

### Observability

- Metrics should be exposed for Prometheus scraping.
- Dashboards should be designed in Grafana.
- Health and readiness endpoints should be available for orchestration.
- Logging format and correlation strategy should be documented once implementation begins.

### Image and release strategy

- Build container images per service.
- Tag images in a reproducible way.
- Avoid tying documentation to a specific CI system before the pipeline is defined.

## Current placeholder status

Implementation artifacts for deployment are not yet documented in detail.
The following items are intentionally left as placeholders:

- exact image names and tags
- Kubernetes manifests and overlays
- OpenShift routes and security contexts
- CI/CD pipeline definitions
- release and promotion process

## Operational expectation

The target is to move from local development to platform deployment with minimal manual rework.
Every deployment artifact should be understandable, reviewable, and suitable for a public portfolio repository.

