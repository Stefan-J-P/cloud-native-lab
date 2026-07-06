# Services

This document summarizes the planned ConnectHub services and shared modules.
Final service responsibilities may evolve during implementation, but the initial scope should remain stable and well documented.

## Planned services

| Component | Purpose | Primary stack | Status |
| --- | --- | --- | --- |
| `connecthub-gateway` | Single external entry point, routing, and cross-cutting request handling | Spring Boot / WebFlux | Planned |
| `connecthub-user-service` | Identity-adjacent user profile and account domain logic | Spring Boot / MongoDB | Planned |
| `connecthub-chat-service` | Real-time or near-real-time conversation features | Spring Boot or Go | Planned |
| `connecthub-complaint-service` | Complaint lifecycle, case tracking, and workflow support | Spring Boot / MongoDB | Planned |
| `connecthub-notification-service` | Notification orchestration and delivery adapters | Go or Spring Boot | Planned |
| `connecthub-presence-service` | Online presence and session-state tracking | Go or Spring Boot | Planned |

## Shared modules

| Module | Purpose | Status |
| --- | --- | --- |
| `connecthub-common` | Shared domain primitives, utilities, and conventions | Planned |
| `connecthub-security` | Security integration helpers and authorization support | Planned |
| `connecthub-tests-utils` | Reusable test fixtures and support components | Planned |

## Service design notes

- Each service should have a single primary responsibility.
- Services should avoid direct database sharing unless explicitly justified.
- External access should go through the gateway unless a platform need requires a different path.
- Authentication and authorization should be delegated to Keycloak, with service-level validation as needed.
- Inter-service communication should be deliberate and documented.

## Data ownership

The initial direction is for each domain service to own its data model and persistence layer.
MongoDB is the default datastore for document-centric use cases, with room for future specialization if requirements change.

## Open items

- Finalize service boundaries during implementation discovery.
- Define external and internal APIs for each service.
- Document eventing or messaging choices if asynchronous workflows are introduced.
- Capture contract examples when the first service is implemented.

