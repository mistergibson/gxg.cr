# -*- encoding: utf-8 -*-
# stub: openssl 2.2.1 ruby lib
# stub: ext/openssl/extconf.rb

Gem::Specification.new do |s|
  s.name = "openssl".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "msys2_mingw_dependencies" => "openssl" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Martin Bosslet".freeze, "SHIBATA Hiroshi".freeze, "Zachary Scott".freeze, "Kazuki Yamaguchi".freeze]
  s.date = "2023-03-30"
  s.description = "It wraps the OpenSSL library.".freeze
  s.email = ["ruby-core@ruby-lang.org".freeze]
  s.extensions = ["ext/openssl/extconf.rb".freeze]
  s.extra_rdoc_files = ["CONTRIBUTING.md".freeze, "NEWS.md".freeze, "README.ja.md".freeze, "README.md".freeze]
  s.files = ["CONTRIBUTING.md".freeze, "NEWS.md".freeze, "README.ja.md".freeze, "README.md".freeze, "anyolite/build/src_mri/ext/openssl/extconf.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/bn.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/buffering.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/cipher.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/config.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/digest.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/hmac.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/marshal.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/pkcs5.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/pkey.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/ssl.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/version.rb".freeze, "anyolite/build/src_mri/ext/openssl/lib/openssl/x509.rb".freeze, "ext/openssl/extconf.rb".freeze]
  s.homepage = "https://github.com/ruby/openssl".freeze
  s.licenses = ["Ruby".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.2.33".freeze
  s.summary = "OpenSSL provides SSL, TLS and general purpose cryptography.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ipaddr>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
  else
    s.add_dependency(%q<ipaddr>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
  end
end
