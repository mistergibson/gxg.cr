require "anyolite"
# ### Ruby core and external publications
module GxG
  RUBY = Anyolite::RbInterpreter.new
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