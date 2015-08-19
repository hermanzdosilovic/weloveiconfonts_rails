ActiveSupport.on_load(:action_view) do
  require 'we_love_icon_fonts/base'
  include WeLoveIconFonts::Base
end

if defined?(Rails)
  module WeLoveIconFontsRails
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  end
end
