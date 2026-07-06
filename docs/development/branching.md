# Branching Strategy

## Goal

Use a simple branching model that supports frequent integration, clear review, and low-friction collaboration.

## Recommended model

A trunk-based approach with short-lived branches is the preferred default.

### Long-lived branches

- `main` — always reflects the current stable baseline.

### Short-lived branches

- `feature/<short-description>` — new functionality
- `fix/<short-description>` — bug fixes
- `docs/<short-description>` — documentation changes
- `chore/<short-description>` — maintenance work

## Pull request expectations

- Keep branches focused on one logical change.
- Rebase or merge from `main` regularly.
- Include a concise summary of the change and its impact.
- Update relevant documentation before merging.
- Ensure automated checks pass before requesting review.

## Release and hotfix guidance

Release and hotfix branches may be introduced later if the delivery process requires them.
For now, the repository should stay lightweight and easy to reason about.

## Naming notes

Branch names should be short, descriptive, and easy to scan in a GitHub repository list.
Avoid ambiguous names such as `update` or `misc`.

