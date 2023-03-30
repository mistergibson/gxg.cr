# -*- encoding: utf-8 -*-
# stub: fiddle 1.0.8 ruby lib
# stub: ext/fiddle/extconf.rb

Gem::Specification.new do |s|
  s.name = "fiddle".freeze
  s.version = "1.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "msys2_mingw_dependencies" => "libffi" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aaron Patterson".freeze, "SHIBATA Hiroshi".freeze]
  s.date = "2023-03-30"
  s.description = "A libffi wrapper for Ruby.".freeze
  s.email = ["aaron@tenderlovemaking.com".freeze, "hsbt@ruby-lang.org".freeze]
  s.extensions = ["ext/fiddle/extconf.rb".freeze]
  s.files = ["anyolite/build/src_mri/ext/fiddle/extconf.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/closure.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/cparser.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/function.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/import.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/pack.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/struct.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/types.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/value.rb".freeze, "anyolite/build/src_mri/ext/fiddle/lib/fiddle/version.rb".freeze, "anyolite/build/src_mri/ext/fiddle/win32/libffi-config.rb".freeze, "ext/fiddle/extconf.rb".freeze]
  s.homepage = "https://github.com/ruby/fiddle".freeze
  s.licenses = ["Ruby".freeze, "BSD-2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "A libffi wrapper for Ruby.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
  end
end
