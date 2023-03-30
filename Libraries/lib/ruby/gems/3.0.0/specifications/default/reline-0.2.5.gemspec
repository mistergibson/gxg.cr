# -*- encoding: utf-8 -*-
# stub: reline 0.2.5 ruby lib

Gem::Specification.new do |s|
  s.name = "reline".freeze
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["aycabta".freeze]
  s.date = "2023-03-30"
  s.description = "Alternative GNU Readline or Editline implementation by pure Ruby.".freeze
  s.email = ["aycabta@gmail.com".freeze]
  s.files = ["anyolite/build/src_mri/lib/reline.rb".freeze, "anyolite/build/src_mri/lib/reline/ansi.rb".freeze, "anyolite/build/src_mri/lib/reline/config.rb".freeze, "anyolite/build/src_mri/lib/reline/general_io.rb".freeze, "anyolite/build/src_mri/lib/reline/history.rb".freeze, "anyolite/build/src_mri/lib/reline/key_actor.rb".freeze, "anyolite/build/src_mri/lib/reline/key_actor/base.rb".freeze, "anyolite/build/src_mri/lib/reline/key_actor/emacs.rb".freeze, "anyolite/build/src_mri/lib/reline/key_actor/vi_command.rb".freeze, "anyolite/build/src_mri/lib/reline/key_actor/vi_insert.rb".freeze, "anyolite/build/src_mri/lib/reline/key_stroke.rb".freeze, "anyolite/build/src_mri/lib/reline/kill_ring.rb".freeze, "anyolite/build/src_mri/lib/reline/line_editor.rb".freeze, "anyolite/build/src_mri/lib/reline/unicode.rb".freeze, "anyolite/build/src_mri/lib/reline/unicode/east_asian_width.rb".freeze, "anyolite/build/src_mri/lib/reline/version.rb".freeze, "anyolite/build/src_mri/lib/reline/windows.rb".freeze]
  s.homepage = "https://github.com/ruby/reline".freeze
  s.licenses = ["Ruby".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "Alternative GNU Readline or Editline implementation by pure Ruby.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<io-console>.freeze, ["~> 0.5"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_development_dependency(%q<yamatanooroti>.freeze, [">= 0.0.6"])
  else
    s.add_dependency(%q<io-console>.freeze, ["~> 0.5"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<yamatanooroti>.freeze, [">= 0.0.6"])
  end
end
