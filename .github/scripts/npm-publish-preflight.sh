#!/usr/bin/env bash
set -euo pipefail

package_name="$(node -p "require('./package.json').name")"
package_version="$(node -p "require('./package.json').version")"

if [[ -z "${NODE_AUTH_TOKEN:-}" ]]; then
  echo "::error::NPM_TOKEN is not configured. Add an npm automation token with publish access to ${package_name}."
  exit 1
fi

npm_user="$(npm whoami 2>/dev/null || true)"
if [[ -z "${npm_user}" ]]; then
  echo "::error::NPM_TOKEN is invalid or cannot authenticate with registry.npmjs.org."
  exit 1
fi

if npm view "${package_name}@${package_version}" version >/dev/null 2>&1; then
  echo "::notice::${package_name}@${package_version} is already published; skipping publish."
  if [[ -n "${GITHUB_ENV:-}" ]]; then
    echo "SKIP_NPM_PUBLISH=true" >>"${GITHUB_ENV}"
  fi
  exit 0
fi

if npm view "${package_name}" name >/dev/null 2>&1; then
  if ! npm owner ls "${package_name}" | awk '{print $1}' | grep -Fxq "${npm_user}"; then
    echo "::error::NPM_TOKEN authenticates as '${npm_user}', but that account is not an npm owner for ${package_name}."
    echo "::error::Create a new npm automation token from an owner account, or add '${npm_user}' as a package maintainer."
    exit 1
  fi
else
  echo "::notice::${package_name} does not exist on npm yet; '${npm_user}' will attempt first publish."
fi

echo "NPM publish preflight passed for ${package_name}@${package_version} as ${npm_user}."
