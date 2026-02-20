# quint-proto

Protobuf schema definitions for Quint — the shared contract between all Quint components.

## Schemas

| File | What it defines |
|------|----------------|
| `audit.proto` | `AuditEntry`, `AuditBundle` — the signed, chain-linked audit receipt format |
| `policy.proto` | `PolicyConfig`, `ServerPolicy`, `ToolRule` — access control rules |
| `proxy.proto` | `InterceptedMessage`, `PolicyDecision`, `QuintProxy` gRPC service |

## Generate code

Requires [buf](https://buf.build/docs/installation):

```bash
# Generate Go + TypeScript types
make generate

# Lint proto files
make lint
```

Generated code goes to:
- `gen/go/quint/v1/` — Go types
- `gen/ts/` — TypeScript types

## Consumers

- [quint-proxy](https://github.com/Quint-Security/quint-proxy) — Go proxy daemon, imports `gen/go`
- [quint-cli](https://github.com/Quint-Security/quint-cli) — TypeScript CLI, imports `gen/ts`

## Versioning

Schemas are versioned under `quint/v1/`. Breaking changes get a new version (`quint/v2/`).
