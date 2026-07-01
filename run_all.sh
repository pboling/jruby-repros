#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ruby_bin="${RUBY_BIN:-${JRUBY_BIN:-jruby}}"

printf 'Ruby: '
"${ruby_bin}" -v

for repro in "${root}"/*/repro.rb; do
  printf '\n== %s ==\n' "$(basename "$(dirname "${repro}")")"
  "${ruby_bin}" "${repro}"
done
