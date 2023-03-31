require "rbconfig"
gxg_root = File.expand_path("../..", File.dirname(__FILE__))
# path_configuation = {
# 	"prefix"=>"#{gxg_root}",
# 	"vendorarchhdrdir"=>"#{gxg_root}/Libraries/include/ruby-3.0.0/vendor_ruby/x86_64-linux",
# 	"sitearchhdrdir"=>"#{gxg_root}/Libraries/include/ruby-3.0.0/site_ruby/x86_64-linux",
# 	"rubyarchhdrdir"=>"#{gxg_root}/Libraries/include/ruby-3.0.0/x86_64-linux",
# 	"vendorhdrdir"=>"#{gxg_root}/Libraries/include/ruby-3.0.0/vendor_ruby",
# 	"sitehdrdir"=>"#{gxg_root}/Libraries/include/ruby-3.0.0/site_ruby",
# 	"rubyhdrdir"=>"#{gxg_root}/Libraries/include/ruby-3.0.0",
# 	"configure_args"=> "--prefix=#{gxg_root}",
# 	"vendorarchdir"=>"#{gxg_root}/Libraries/lib/ruby/vendor_ruby/3.0.0/x86_64-linux",
# 	"vendorlibdir"=>"#{gxg_root}/Libraries/lib/ruby/vendor_ruby/3.0.0",
# 	"vendordir"=>"#{gxg_root}/Libraries/lib/ruby/vendor_ruby",
# 	"sitearchdir"=>"#{gxg_root}/Libraries/lib/ruby/site_ruby/3.0.0/x86_64-linux",
# 	"sitelibdir"=>"#{gxg_root}/Libraries/lib/ruby/site_ruby/3.0.0",
# 	"sitedir"=>"#{gxg_root}/Libraries/lib/ruby/site_ruby",
# 	"rubyarchdir"=>"#{gxg_root}/Libraries/lib/ruby/3.0.0/x86_64-linux",
# 	"rubylibdir"=>"#{gxg_root}/Libraries/lib/ruby/3.0.0",
# 	"sitearchincludedir"=>"#{gxg_root}/Libraries/include/x86_64-linux",
# 	"archincludedir"=>"#{gxg_root}/Libraries/include/x86_64-linux",
# 	"sitearchlibdir"=>"#{gxg_root}/Libraries/lib/x86_64-linux",
# 	"archlibdir"=>"#{gxg_root}/Libraries/lib/x86_64-linux",
# 	"RUBY_EXEC_PREFIX"=>"#{gxg_root}/Libraries",
# 	"ridir"=>"#{gxg_root}/Libraries/share/ri",
# 	"rubysitearchprefix"=>"#{gxg_root}/Libraries/lib/ruby/x86_64-linux",
# 	"rubyarchprefix"=>"#{gxg_root}/Libraries/lib/ruby/x86_64-linux",
# 	"LIBRUBYARG_SHARED"=>"-Wl,-rpath,#{gxg_root}/Libraries/lib -L#{gxg_root}/Libraries/lib ", "LIBRUBYARG_STATIC"=>"-Wl,-rpath,#{gxg_root}/Libraries/lib -L#{gxg_root}/Libraries/lib -lruby-static -lz -lpthread -lrt -lrt -lgmp -ldl -lcrypt -lm ", "LIBRUBYARG"=>"-Wl,-rpath,#{gxg_root}/Libraries/lib -L#{gxg_root}/Libraries/lib -lruby-static -lz -lpthread -lrt -lrt -lgmp -ldl -lcrypt -lm ",
# 	"rubylibprefix"=>"#{gxg_root}/Libraries/lib/ruby",
# 	"mandir"=>"#{gxg_root}/Libraries/share/man",
# 	"localedir"=>"#{gxg_root}/Libraries/share/locale",
# 	"libdir"=>"#{gxg_root}/Libraries/lib",
# 	"psdir"=>"#{gxg_root}/Libraries/share/doc/ruby",
# 	"pdfdir"=>"#{gxg_root}/Libraries/share/doc/ruby",
# 	"dvidir"=>"#{gxg_root}/Libraries/share/doc/ruby",
# 	"htmldir"=>"#{gxg_root}/Libraries/share/doc/ruby",
# 	"infodir"=>"#{gxg_root}/Libraries/share/info",
# 	"docdir"=>"#{gxg_root}/Libraries/share/doc/ruby",
# 	"includedir"=>"#{gxg_root}/Libraries/include",
# 	"runstatedir"=>"#{gxg_root}/Libraries/var/run",
# 	"localstatedir"=>"#{gxg_root}/Libraries/var",
# 	"sharedstatedir"=>"#{gxg_root}/Libraries/com",
# 	"sysconfdir"=>"#{gxg_root}/Libraries/etc",
# 	"datadir"=>"#{gxg_root}/Libraries/share",
# 	"datarootdir"=>"#{gxg_root}/Libraries/share",
# 	"libexecdir"=>"#{gxg_root}/Libraries/libexec",
# 	"sbindir"=>"#{gxg_root}/Libraries/sbin",
# 	"bindir"=>"#{gxg_root}/Libraries/bin",
# 	"exec_prefix"=>"#{gxg_root}/Libraries",
# 	"archdir"=>"#{gxg_root}/Libraries/lib/ruby/3.0.0/x86_64-linux",
# 	"topdir"=>"#{gxg_root}/Libraries/lib/ruby/3.0.0/x86_64-linux"
# }
# path_configuation.each_pair do |specifier, value|
# 	RbConfig::CONFIG[(specifier)] = value
# end
#
require "rubygems"
# module Gem
# 	def self.set_default_prefix(the_path=nil)
# 		if the_path
# 			@default_dir = the_path
# 			@gem_path = the_path
# 		end
# 	end
# end
# Gem.set_default_prefix("#{gxg_root}/Libraries/lib/ruby/gems/3.0.0")
#
require 'rubygems/gem_runner'
require 'rubygems/exceptions'
module Gem::UserInteraction
	def terminate_interaction(exit_code = 0)
		# Suppress the instruction to exit ruby:
		# ui.terminate_interaction exit_code
	  end
end
class Object
	private
	def gem_command(commands=nil)
		if commands.is_a?(::String)
			Gem::GemRunner.new.run commands.split(" ")
		end
	end
	public
end
# # ### ARGV importation
if defined?(::External)
	External.argv.each do |entry|
		::ARGV << entry
	end
else
	module External
	  def self.argv()
		::ARGV
	  end
	end
end
#
require "gxg-framework"
#