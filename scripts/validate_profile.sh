#!/usr/bin/env bash
set -euo pipefail

profile_file="profile/README.md"
root_readme="README.md"

for file in "$profile_file" "$root_readme" "profile/banner-dark.svg" "profile/banner-light.svg" "SECURITY.md" "CODEOWNERS"; do
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

# Verify local Markdown references resolve.
while IFS= read -r ref; do
  path="${ref#./}"
  path="${path#../}"
  if [[ ! -e "$path" ]]; then
    echo "Broken local reference: $ref" >&2
    exit 1
  fi
done < <(grep -rhoE '\]\((\.?\.?/)?[^):#?]+\)' README.md profile/README.md | sed -E 's/^.*\(([^)#?]+).*/\1/' | grep -vE '^(https://|http://|mailto:|#)')

# Require HTTPS for public links in text files only.
if grep -In 'http://' README.md profile/README.md SECURITY.md CONTRIBUTING.md SUPPORT.md .github/pull_request_template.md .github/ISSUE_TEMPLATE/config.yml | grep -v 'http://www.apache.org/licenses/'; then
  echo "Insecure http:// link found" >&2
  exit 1
fi

echo "Profile and governance validation passed."
