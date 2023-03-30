# -*- encoding: utf-8 -*-
# stub: psych 3.3.2 ruby lib
# stub: ext/psych/extconf.rb

Gem::Specification.new do |s|
  s.name = "psych".freeze
  s.version = "3.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aaron Patterson".freeze, "SHIBATA Hiroshi".freeze, "Charles Oliver Nutter".freeze]
  s.date = "2023-03-30"
  s.description = "Psych is a YAML parser and emitter. Psych leverages libyaml[https://pyyaml.org/wiki/LibYAML]\nfor its YAML parsing and emitting capabilities. In addition to wrapping libyaml,\nPsych also knows how to serialize and de-serialize most Ruby objects to and from the YAML format.\n".freeze
  s.email = ["aaron@tenderlovemaking.com".freeze, "hsbt@ruby-lang.org".freeze, "headius@headius.com".freeze]
  s.extensions = ["ext/psych/extconf.rb".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "anyolite/build/src_mri/ext/psych/extconf.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/class_loader.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/coder.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/core_ext.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/exception.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/handler.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/handlers/document_stream.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/handlers/recorder.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/json/ruby_events.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/json/stream.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/json/tree_builder.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/json/yaml_events.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/alias.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/document.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/mapping.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/node.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/scalar.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/sequence.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/nodes/stream.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/omap.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/parser.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/scalar_scanner.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/set.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/stream.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/streaming.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/syntax_error.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/tree_builder.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/versions.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors/depth_first.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors/emitter.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors/json_tree.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors/to_ruby.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors/visitor.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/visitors/yaml_tree.rb".freeze, "anyolite/build/src_mri/ext/psych/lib/psych/y.rb".freeze, "ext/psych/extconf.rb".freeze]
  s.homepage = "https://github.com/ruby/psych".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "Psych is a YAML parser and emitter".freeze
end
