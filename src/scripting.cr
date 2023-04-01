require "anyolite"
# ### Ruby core and external publications
module GxG
  RUBY = Anyolite::RbInterpreter.new
  RUBY_BUFFER = [""]
  RUBY_SAFETY = ::Mutex.new
  module External
    # See: https://github.com/Anyolite/anyolite/wiki/Code-guidelines-and-workarounds#non-keyword-arguments
    @[Anyolite::WrapWithoutKeywords]
    def self.output(the_string : String =  "") : Nil
      GxG::RUBY_SAFETY.synchronize do
        GxG::RUBY_BUFFER.push(the_string)
        # puts GxG::RUBY_BUFFER.inspect
      end
    end
    def self.dump()
      the_string = ""
      GxG::RUBY_SAFETY.synchronize do
        if GxG::RUBY_BUFFER.size > 0
          the_string = GxG::RUBY_BUFFER.shift.to_s
        end
        # puts GxG::RUBY_BUFFER.inspect
      end
      the_string
    end
  end
end
Anyolite.wrap(GxG::RUBY, GxG::External)
class String
  def run_script()
    self.each_line do |the_line|
      GxG::RUBY.execute_script_line(the_line)
    end
  end
end
# ### Start GxG Framework
GxG::RUBY.load_script_from_file("Libraries/lib/bootstrap.rb")