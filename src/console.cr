# See: https://athenaframework.org/Console
# require "athena-console"
# application = ACON::Application.new "Console"
# application.run
require "crysterm"
module GxG
    class Console
        # include Crysterm
        def initialize()
            # See: https://github.com/crystallabs/crysterm/blob/master/examples/chat.cr
            @active = false
            @screen = Crysterm::Screen.new show_fps: nil, dock_contrast: Crysterm::DockContrast::Blend, dock_borders: true
            @style = Crysterm::Style.new fg: "white", bg: "black", border: Crysterm::Border.new(fg: "black", bg: "#000000"), alpha: 0.5, padding: 1
            @text_area = Crysterm::Widget::TextArea.new top: 0, left: 0, width: "100%-19", height: "100%-2", content: "Console", parse_tags: false, style: @style, scrollbar: false
            @input = Crysterm::Widget::TextBox.new top: "100%-3", left: 0, width: "100%-19", height: 3, style: @style
            @input.on(Crysterm::Event::Submit) do |e|
                @text_area.set_content "#{@text_area.content}\n#{e.value}"
                @input.value = ""
                @screen.render
                @input.focus
            end
            @screen.append @text_area
            # @screen.append @input
            @screen.on(Crysterm::Event::KeyPress) do |e|
                case e.key
                when Tput::Key::CtrlQ
                    exit
                when Tput::Key::Tab
                    @screen.focus_next
                when Tput::Key::ShiftTab
                    @screen.focus_previous
                end
            end
        end
        def run
            @active = true
            @screen.render
            "require '#{GxG::ROOT}/Libraries/lib/console.rb'".run_script
            while @active == true
                # @screen.render
                input = ""
                # STDOUT.print("]")
                input = gets()
                if input.is_a?(::String)
                    if input == "exit"
                        @active = false
                    else
                        # input.run_script
                        # if GxG::RETURN_LOOP.size > 0
                        #     GxG::RETURN_LOOP.each do |item|
                        #         @text_area.set_content item.to_s
                        #     end
                        #     # @text_area.set_content ( @text_area.get_content  + GxG::RETURN_LOOP.join("\n") )
                        #     GxG::RETURN_LOOP.clear
                        #     @text_area.scroll_to @text_area.get_content.lines.size
                        # end
                        @screen.render
                        # STDOUT.print("=>")
                        # puts input.run_script.inspect
                    end
                end
            end
        end
        #
    end
    #
    class SimpleIO
        def initialize()
            @active = true
        end
        def run
            "require '#{GxG::ROOT}/Libraries/lib/console.rb'".run_script
            while @active == true
                input = ""
                STDOUT.print("]")
                input = gets()
                if input.is_a?(::String)
                    if input == "exit"
                        @active = false
                    else
                        STDOUT.print("=>")
                        puts input.run_script.inspect
                    end
                end
            end
        end
    end
end