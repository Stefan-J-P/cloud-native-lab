# Architecture Overview

## Purpose

ConnectHub is designed as a cloud native reference project for backend and platform engineering practices.
The target architecture favors clear service boundaries, observable runtime behavior, and deployment patterns that work across local containers, Kubernetes, and OpenShift.

## Architectural style

- **Service-oriented / microservice architecture** for independently deployable domains.
- **API gateway entry point** for external traffic and cross-cutting concerns.
- **Shared platform capabilities** for authentication, monitoring, and configuration.
- **Documentation-first delivery** so architectural intent is visible before implementation details are complete.

## Core principles

- Keep services small and bounded by domain.
- Prefer explicit contracts over implicit coupling.
- Secure all user-facing APIs.
- Make runtime health, metrics, and logs observable from the start.
- Optimize for maintainability and educational value, not only feature count.

## Technology direction

- **Java 21 / Spring Boot 3 / Spring WebFlux** for reactive backend services.
- **Go** for lightweight platform utilities or specialized services where appropriate.
- **Python** for automation, scripting, and support tooling.
- **Bash** for local developer and operational scripts.
- **MongoDB** as the primary document-oriented datastore for selected services.
- **Keycloak** for identity and access management.
- **Prometheus and Grafana** for metrics collection and visualization.
- **Docker, Kubernetes, and OpenShift** for packaging and deployment.

## High-level runtime view

```text
Client
  -> API Gateway
  -> Domain services
  -> Data stores / external integrations

Cross-cutting platform services:
  - Identity and access management
  - Metrics and dashboards
  - Configuration and secrets
  - Container orchestration and deployment
```

## Documentation notes

This overview describes the intended target architecture.
Service boundaries, deployment topology, and operational details are expected to evolve as implementation begins.

Where implementation is not available yet, the documentation uses placeholders and planned-state descriptions.

