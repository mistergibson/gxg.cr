gxg_root = File.expand_path("../", File.dirname(__FILE__))
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
# ### Sqlite3
require "./mysql.cr"
# ### Sqlite3
require "./postgres.cr"
# ### Start Ruby
require "./scripting.cr"
# ### Console support
require "./console.cr"
if use_console
  #
  "require '#{gxg_root}/Libraries/lib/console.rb'".run_script
end
# ### GUI support
# require "./gui.cr"