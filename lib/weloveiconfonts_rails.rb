if defined?(ActionView::Helpers)
  require 'we_love_icon_fonts/base'
  ActionView::Helpers.include(WeLoveIconFonts::Base)
end

if defined?(Rails)
  module WeLoveIconFontsRails
    module Rails
      class Engine < ::Rails::Engine
      end
    end
  end
end
