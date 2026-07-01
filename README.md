# JRuby Repros

Minimal repro cases for JRuby behavior that differs from MRI or causes
unexpected CI failures in kettle-family projects.

## Repros

- `jopenssl-load-warnings/` demonstrates that explicitly loading
  `jopenssl/load.rb` more than once on JRuby head reinitializes OpenSSL
  constants and emits a large warning block. This matches the warning flood seen
  in kettle-dev's `jruby-head` Heads workflow.

Related upstream issue:

- <https://github.com/jruby/jruby-openssl/issues/251>

## Running

Run all repros with:

```bash
./run_all.sh
```

Each repro can also be run directly with JRuby:

```bash
jruby jopenssl-load-warnings/repro.rb
```
