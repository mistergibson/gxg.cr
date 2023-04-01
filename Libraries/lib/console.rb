if defined?(::External)
    class ShimIO < ::StringIO
        def read(length=0, outbuf=nil)
            External.dump()
        end
        def write(*args)
            output = ""
            args.each do |item|
                output << item.to_s
            end
            if output.size > 0
                External.output(output.to_s)
            end
            output.to_s.size
        end
    end
    module GxG
        RETURN_LOOP = ShimIO.new
    end
    ::STDOUT = GxG::RETURN_LOOP
    ::STDERR = GxG::RETURN_LOOP
    module GxG
        if const_defined?(:LOG)
          remove_const(:LOG)
        end
        LOG = ::GxG::Events::LogRing.new()
    end
    ::GxG::LOG[:default] = ::Logger.new(STDOUT)
    ::GxG::LOG[:default].level = ::Logger::INFO
end
#