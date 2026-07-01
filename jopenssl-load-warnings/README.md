# jopenssl/load.rb Warning Flood

## Summary

On JRuby head, explicitly loading `jopenssl/load.rb` more than once reloads the
OpenSSL extension and redefines a large set of constants and methods. The second
load emits hundreds of duplicate warnings.

This is not triggered by normal `require "openssl"` or repeated
`require "jopenssl/load"`, but it does reproduce with `load "jopenssl/load.rb"`.

## Observed

```text
jruby 10.1.1.0-SNAPSHOT (4.0.0) 2026-06-30 1729f1fbd0 ...
load jopenssl/load 0
load jopenssl/load 1
.../jopenssl/load.rb:26: warning: already initialized constant OpenSSL::...
```

## Related

- <https://github.com/jruby/jruby-openssl/issues/251>

## Run

```bash
jruby repro.rb
```
