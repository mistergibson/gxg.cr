require "anyolite"

# ### Ruby core and external publications
module GxG
  VERSION = "0.0.1"
  RUBY = Anyolite::RbInterpreter.new
  module External
  end
end
Anyolite.wrap(GxG::RUBY, GxG::External)
GxG::RUBY.load_script_from_file("Libraries/lib/bootstrap.rb")
