module GxG
  ROOT = File.expand_path("../", File.dirname(__FILE__))
end
require "option_parser"
use_console = false
OptionParser.parse do |parser|
  parser.banner = "Usage: gxg [arguments]"
  parser.on("-c", "--console", "Use the console") do
     use_console = true
    end
  parser.on("-h", "--help", "Show this help") do
    puts parser
    exit
  end
  parser.invalid_option do |flag|
    STDERR.puts "ERROR: #{flag} is not a valid option."
    STDERR.puts parser
    exit(1)
  end
end
#
module GxG
  VERSION = "0.0.1"
  module External
    def self.argv()
      ::ARGV
    end
  end
end
# ### Sqlite3
require "./sqlite3.cr"
# ### Mysql
require "./mysql.cr"
# ### Postgres
require "./postgres.cr"
# ### GUI support
# FIX: https://github.com/Papierkorb/qt5.cr/issues/61
# require "./gui.cr"
# ### Start Ruby
require "./scripting.cr"
module GxG
  def self.shutdown
    GxG::RUBY.close
    exit 0
  end
end
# ### Console support
require "./console.cr"
if use_console
  #
  # console = GxG::Console.new
  console = GxG::SimpleIO.new
  console.run
end