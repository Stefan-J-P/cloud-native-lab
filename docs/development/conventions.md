# Development Conventions

## General principles

- Keep changes small, reviewable, and well documented.
- Prefer explicit names for modules, services, and configuration keys.
- Update documentation when behavior changes.
- Treat observability and security as part of the implementation, not as afterthoughts.

## Repository conventions

- Use Markdown for architectural and process documentation.
- Use consistent terminology: **ConnectHub** for the application and `connecthub-*` for services and modules.
- Record major design choices as ADRs.
- Avoid duplicating information across documents unless the duplication helps readability.

## Implementation conventions

The implementation has not been finalized yet, so these conventions are intentionally high level.
When code is added, each service should follow the language-specific standards of its ecosystem:

- Java services: modern Spring Boot structure, clear package boundaries, and testable configuration.
- Go components: simple package layout, explicit error handling, and readable concurrency.
- Python scripts: minimal dependencies and clear CLI behavior.
- Bash utilities: predictable exit codes and defensive scripting.

## API and contract conventions

- Prefer resource names and events that reflect the domain.
- Document public endpoints and payloads when they become available.
- Keep request and response examples in the service documentation rather than in scattered notes.

## Testing conventions

- Add tests with each new behavior, not after the fact.
- Favor fast unit tests for domain logic.
- Add integration tests for persistence, messaging, and external boundaries.
- Keep shared test fixtures in the planned `connecthub-tests-utils` module.

## Observability conventions

- Expose health and readiness information.
- Publish metrics that help explain service behavior.
- Keep log output structured and consistent across services.

## Documentation conventions

- Write for a public audience.
- Assume the reader may not know the project history.
- Mark incomplete parts clearly with `TBD` or `Planned` instead of leaving them ambiguous.

