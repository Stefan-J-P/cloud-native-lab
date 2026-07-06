# ADR-0001: Project Scope

## Status

Accepted

## Context

The repository needs a clear and durable scope before implementation begins.
The project should demonstrate cloud native engineering, be suitable for a public portfolio, and remain realistic enough to complete incrementally.

Without a defined scope, the codebase could drift into an unfocused collection of experiments, duplicate patterns, or an overly broad platform that is difficult to maintain.

## Decision

ConnectHub will be developed as a production-quality educational cloud native application with the following scope:

- modern backend services built primarily with Java 21, Spring Boot 3, and Spring WebFlux
- selective use of Go, Python, and Bash where they provide clear value
- MongoDB as the primary datastore for document-oriented services
- Docker, Kubernetes, and OpenShift as the deployment targets
- Keycloak for identity and access management
- Prometheus and Grafana for observability

The repository will emphasize:

- clear service boundaries
- secure defaults
- platform engineering practices
- documentation-first development
- public portfolio readability

The project will not attempt to solve every possible product or platform concern at once.
Features beyond the initial scope should be treated as planned work and documented explicitly.

## Consequences

### Positive

- The project has a clear identity and audience.
- Documentation can stay aligned with the implementation.
- The architecture can evolve incrementally without losing coherence.
- Reviewers can understand the intent of the system quickly.

### Negative

- Some ideas will remain deferred or intentionally out of scope.
- Initial implementation speed may be slower because documentation and architecture discipline come first.
- The repository may contain placeholders until the corresponding functionality is built.

## Notes

This ADR defines the initial project scope only.
Future ADRs should capture decisions about service boundaries, communication patterns, persistence strategy, CI/CD, and deployment conventions as they are finalized.

