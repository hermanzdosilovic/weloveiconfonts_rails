module WeLoveIconFonts
  module Base
    def iconfont(icon, options = {})
      @options = option_defaults(options)
      method = options[:link].empty? ? :create_icon : :create_link

      @input_html = generate_input_html(options[:input_html])
      @html_attributes = generate_html_attributes(options)
      @icon_classes = generate_icon_classes(options)
      @content_classes = generate_content_classes(options)
      @icon = icon

      content =
      "
      <div class=\"weloveiconfonts__item\">
        #{send method}
      </div>
      "

      content = content.html_safe if String.method_defined? :html_safe
      content
    end

    private

    def option_defaults(options)
      options ||= {}
      options[:link] ||= ''
      options[:hoverable] = !options[:link].empty? if options[:hoverable].nil?
      options[:foreground] ||= '#000000'
      options[:round] ||= false
      options[:shade] ||= :bright
      options[:size] = 100 if options[:size].nil?
      options[:font_size] = options[:size] / 2 - 5
      options[:input_html] ||= {}
      options
    end

    def generate_input_html(html_options)
      input_html = ''
      html_options.keys.each do |key|
        input_html << " #{key}=\""
        input_html << "#{html_options[key]}\""
      end
      input_html.strip!
    end

    def generate_html_attributes(options)
      html_attributes = "shade=" + (options[:shade] == :dark ? '"#000000"' : '"#ffffff"')

      html_attributes << ' style = "color: '
      html_attributes << "#{options[:foreground]};"
      html_attributes << " background-color: #{options[:background]};" unless options[:background].nil?
      html_attributes << " width: #{options[:size]}px; height: #{options[:size]}px;"
      html_attributes << " font-size: #{options[:font_size]}px;"
      html_attributes << '"'

      html_attributes.strip
    end

    def generate_icon_classes(options)
      icon_classes = ''
      icon_classes << 'hoverable ' if options[:hoverable] && !options[:background].nil?
      icon_classes << 'round ' if options[:round]
      icon_classes.strip
    end

    def generate_content_classes(options)
      content_classes = ''
      content_classes << 'hoverable ' if options[:hoverable] && options[:background].nil?
      content_classes.strip
    end

    def create_icon
      "
      <div #{@input_html} class=\"weloveiconfonts__icon #{@icon_classes}\" #{@html_attributes}>
        #{send :create_content}
      </div>
      "
    end

    def create_link
      "
      <a #{@input_html} class=\"weloveiconfonts__icon #{@icon_classes}\" href=\"#{@options[:link]}\" #{@html_attributes}>
        #{send :create_content}
      </a>
      "
    end

    def create_content
      "
      <div class=\"weloveiconfonts__content #{@icon} #{@content_classes}\">
      </div>
      "
    end
  end
end
