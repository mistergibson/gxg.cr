module GxG
  VERSION = "0.0.1"
  module External
    def self.argv()
      ::ARGV
    end
  end
end
# ### Start Ruby
require "./scripting.cr"
"puts \"hello\"
puts 'world'
".run_script