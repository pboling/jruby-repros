# frozen_string_literal: true

warn "ruby: #{RUBY_DESCRIPTION}"

unless RUBY_ENGINE == "jruby"
  warn "This repro targets JRuby; current engine is #{RUBY_ENGINE}."
  exit 0
end

2.times do |index|
  warn "load jopenssl/load #{index}"
  load "jopenssl/load.rb"
end

warn "done"
