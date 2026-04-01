#!/bin/bash

BASE_URL="https://www.mintlify.com/VineeTagarwaL-code/claude-code"

# Create directory structure
mkdir -p docs/{concepts,configuration,guides,reference/{commands,sdk,tools}}

# Concepts
curl -s "$BASE_URL/concepts/how-it-works.md" > docs/concepts/how-it-works.md
curl -s "$BASE_URL/concepts/memory-context.md" > docs/concepts/memory-context.md
curl -s "$BASE_URL/concepts/permissions.md" > docs/concepts/permissions.md
curl -s "$BASE_URL/concepts/tools.md" > docs/concepts/tools.md

# Configuration
curl -s "$BASE_URL/configuration/claudemd.md" > docs/configuration/claudemd.md
curl -s "$BASE_URL/configuration/environment-variables.md" > docs/configuration/environment-variables.md
curl -s "$BASE_URL/configuration/settings.md" > docs/configuration/settings.md

# Guides
curl -s "$BASE_URL/guides/authentication.md" > docs/guides/authentication.md
curl -s "$BASE_URL/guides/hooks.md" > docs/guides/hooks.md
curl -s "$BASE_URL/guides/mcp-servers.md" > docs/guides/mcp-servers.md
curl -s "$BASE_URL/guides/multi-agent.md" > docs/guides/multi-agent.md
curl -s "$BASE_URL/guides/skills.md" > docs/guides/skills.md

# Root
curl -s "$BASE_URL/installation.md" > docs/installation.md
curl -s "$BASE_URL/introduction.md" > docs/introduction.md
curl -s "$BASE_URL/quickstart.md" > docs/quickstart.md

# Reference - Commands
curl -s "$BASE_URL/reference/commands/cli-flags.md" > docs/reference/commands/cli-flags.md
curl -s "$BASE_URL/reference/commands/overview.md" > docs/reference/commands/overview.md
curl -s "$BASE_URL/reference/commands/slash-commands.md" > docs/reference/commands/slash-commands.md

# Reference - SDK
curl -s "$BASE_URL/reference/sdk/hooks-reference.md" > docs/reference/sdk/hooks-reference.md
curl -s "$BASE_URL/reference/sdk/overview.md" > docs/reference/sdk/overview.md
curl -s "$BASE_URL/reference/sdk/permissions-api.md" > docs/reference/sdk/permissions-api.md

# Reference - Tools
curl -s "$BASE_URL/reference/tools/agent.md" > docs/reference/tools/agent.md
curl -s "$BASE_URL/reference/tools/bash.md" > docs/reference/tools/bash.md
curl -s "$BASE_URL/reference/tools/file-operations.md" > docs/reference/tools/file-operations.md
curl -s "$BASE_URL/reference/tools/search.md" > docs/reference/tools/search.md
curl -s "$BASE_URL/reference/tools/web.md" > docs/reference/tools/web.md

# OpenAPI spec
curl -s "$BASE_URL/api-reference/openapi.json" > docs/openapi.json

echo "✅ Downloaded 25 files"
