#
# class ShimIO < ::StringIO
#     def initialize
#         super
#     end
#     def rewind
#     end
#     def read()
#         External.return_loop.join("\n")
#     end
#     def write(output="")
#         External.output(output.to_s)
#     end
# end
# module GxG
#     RETURN_LOOP = ShimIO.new
# end
# STDOUT.reopen(GxG::RETURN_LOOP, "w")
# STDERR.reopen(GxG::RETURN_LOOP, "w")
# puts External.return_loop.inspect
puts ARGV.inspect