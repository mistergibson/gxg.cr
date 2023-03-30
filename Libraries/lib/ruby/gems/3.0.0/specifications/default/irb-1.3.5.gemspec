# -*- encoding: utf-8 -*-
# stub: irb 1.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "irb".freeze
  s.version = "1.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keiju ISHITSUKA".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-03-30"
  s.description = "Interactive Ruby command-line tool for REPL (Read Eval Print Loop).".freeze
  s.email = ["keiju@ruby-lang.org".freeze]
  s.executables = ["irb".freeze]
  s.files = ["anyolite/build/src_mri/lib/irb.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/chws.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/fork.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/help.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/info.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/load.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/ls.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/measure.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/nop.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/pushws.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/show_source.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/subirb.rb".freeze, "anyolite/build/src_mri/lib/irb/cmd/whereami.rb".freeze, "anyolite/build/src_mri/lib/irb/color.rb".freeze, "anyolite/build/src_mri/lib/irb/color_printer.rb".freeze, "anyolite/build/src_mri/lib/irb/completion.rb".freeze, "anyolite/build/src_mri/lib/irb/context.rb".freeze, "anyolite/build/src_mri/lib/irb/easter-egg.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/change-ws.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/history.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/loader.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/multi-irb.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/save-history.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/tracer.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/use-loader.rb".freeze, "anyolite/build/src_mri/lib/irb/ext/workspaces.rb".freeze, "anyolite/build/src_mri/lib/irb/extend-command.rb".freeze, "anyolite/build/src_mri/lib/irb/frame.rb".freeze, "anyolite/build/src_mri/lib/irb/help.rb".freeze, "anyolite/build/src_mri/lib/irb/init.rb".freeze, "anyolite/build/src_mri/lib/irb/input-method.rb".freeze, "anyolite/build/src_mri/lib/irb/inspector.rb".freeze, "anyolite/build/src_mri/lib/irb/lc/error.rb".freeze, "anyolite/build/src_mri/lib/irb/lc/ja/encoding_aliases.rb".freeze, "anyolite/build/src_mri/lib/irb/lc/ja/error.rb".freeze, "anyolite/build/src_mri/lib/irb/locale.rb".freeze, "anyolite/build/src_mri/lib/irb/magic-file.rb".freeze, "anyolite/build/src_mri/lib/irb/notifier.rb".freeze, "anyolite/build/src_mri/lib/irb/output-method.rb".freeze, "anyolite/build/src_mri/lib/irb/ruby-lex.rb".freeze, "anyolite/build/src_mri/lib/irb/src_encoding.rb".freeze, "anyolite/build/src_mri/lib/irb/version.rb".freeze, "anyolite/build/src_mri/lib/irb/workspace.rb".freeze, "anyolite/build/src_mri/lib/irb/ws-for-case-2.rb".freeze, "anyolite/build/src_mri/lib/irb/xmp.rb".freeze, "exe/irb".freeze]
  s.homepage = "https://github.com/ruby/irb".freeze
  s.licenses = ["Ruby".freeze, "BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "Interactive Ruby command-line tool for REPL (Read Eval Print Loop).".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<reline>.freeze, [">= 0.1.5"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<reline>.freeze, [">= 0.1.5"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
