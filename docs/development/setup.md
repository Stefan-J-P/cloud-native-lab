# Development Setup

## Prerequisites

Install the following before working on ConnectHub:

- Java 21
- A build tool compatible with the service implementation approach in use
- Docker and Docker Compose
- Kubernetes tooling for local cluster testing
- Git
- Optional: Go, Python, and Bash tooling depending on the component being worked on

## Recommended workflow

1. Clone the repository.
2. Review the architecture and roadmap documents.
3. Install the required language runtimes and CLI tools.
4. Configure environment-specific values locally.
5. Start dependencies and services in the smallest useful scope.
6. Verify health, logs, and metrics before making changes.

## Local environment guidance

- Prefer reproducible setup steps over manual machine-specific configuration.
- Keep secrets out of the repository and out of shell history where possible.
- Use containerized dependencies when a local installation would be brittle.
- Record any required environment variables in this document once they are known.

## Working with the codebase

At the time of writing, the repository is in the documentation-first phase.
Implementation-specific setup commands are not yet finalized.

Placeholders to complete later:

- module-by-module build commands
- service startup commands
- database bootstrap steps
- seed data or fixture loading
- IDE run configurations

## Verification

Once services are implemented, this page should include the minimum steps required to confirm that:

- the project builds successfully
- local dependencies are reachable
- authentication is available
- at least one service responds to a health check
- metrics endpoints are exposed

