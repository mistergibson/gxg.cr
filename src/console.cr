# See: https://athenaframework.org/Console
# require "athena-console"
# application = ACON::Application.new "Console"
# application.run
require "crysterm"
module GxG
    
class Console
    include Crysterm
    def initialize()
        @history = [""]
        @history_index = 0
        @screen = Screen.new show_fps: nil, dock_contrast: DockContrast::Blend, dock_borders: true
  
        style1 = Style.new fg: "white", bg: "#000000", border: Border.new(fg: "black", bg: "#729fcf"), scrollbar: Style.new(bg: "#000000"), track: Style.new(bg: "red")
        style2 = Style.new fg: "black", bg: "magenta", border: Border.new(fg: "black", bg: "#729fcf"), alpha: 0.5, padding: 1
        # style2 = Style.new fg: "white", bg: "#870087", border: Border.new(fg: "black", bg: "#870087", alpha: true), alpha: true
        style3 = Style.new fg: "black", "bg": "#729fcf", border: Border.new(fg: "magenta", bg: "#729fcf"), bar: Style.new(fg: "#d75f00")
  
        @output = Widget::TextArea.new \
            top: 0,
            left: 0,
            width: "100%",
            height: "100%-5",
            content: "",
            parse_tags: false,
            style: style1,
            scrollbar: true
  
        @input = Widget::TextBox.new \
            top: "100%-5",
            left: 0,
            width: "100%",
            height: 5,
            style: style1

        @input.on(Crysterm::Event::Submit) do |e|
            e.value.to_s.run_script
            @history << (e.value)
            @history_index = @history.size
            @input.value = ""
            @screen.render
            @input.focus
        end
  
        @screen.append @output
        @screen.append @input
  
        @input.focus
  
        # When q is pressed, exit the demo. All @input first goes to the `Display`,
        # before being passed onto the focused widget, and then up its parent
        # tree. So attaching a handler to `Display` is the correct way to handle
        # the key press as early as possible.
        # See: https://github.com/crystallabs/tput.cr/blob/master/src/tput/key@screen.cr
        @screen.on(Event::KeyPress) do |e|
            case e.key
            when Tput::Key::CtrlQ
                ::GxG.shutdown
            when Tput::Key::Enter
                if @input.get_content.size > 0
                    if @input.value == "exit"
                        ::GxG.shutdown
                    end
                    @history << @input.get_content
                    @history_index = @history.size
                    @input.get_content.run_script
                    @input.set_content ""
                    @input.value = ""
                    @input.focus
                end
                @input.focus
            when Tput::Key::Up
                @history_index -= 1
                if @history_index >= 0
                    @input.value = @history[(@history_index)]
                    @input.set_content @history[(@history_index)]
                else
                    @history_index = 0
                    @input.value = @history[(@history_index)]
                    @input.set_content @history[(@history_index)]
                end
            when Tput::Key::Down        
                @history_index += 1
                if @history_index < @history.size
                    @input.value = @history[(@history_index)]
                    @input.set_content @history[(@history_index)]
                else
                    @input.value = ""
                    @input.set_content ""
                    @history_index = @history.size
                end
            when Tput::Key::Tab
                @screen.focus_next
            when Tput::Key::ShiftTab
                @screen.focus_previous
            end
        end
    end
    def run
        "require '#{GxG::ROOT}/Libraries/lib/console.rb'".run_script
        spawn do
            loop do
                data = GxG::External.dump()
                if data.size > 0
                    @output.set_content "#{@output.content}\n#{data}"
                end
                @output.scroll_to @output.get_content.lines.size
                sleep 0.333
                @input.focus
                #
                @screen.render
            end
        end    
        @screen.exec
    end
  end

    class SimpleIO
        def initialize()
            @active = true
        end
        def run
            "require '#{GxG::ROOT}/Libraries/lib/console.rb'".run_script
            while @active == true
                input = ""
                data = GxG::External.dump()
                if data.size > 0
                    puts data
                end
                input = gets()
                if input.is_a?(::String)
                    if input == "exit"
                        @active = false
                        ::GxG.shutdown
                    else
                        input.run_script
                    end
                end
            end
        end
    end
end