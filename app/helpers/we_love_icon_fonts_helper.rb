module WeLoveIconFontsHelper
  def iconfont_facebook(options = {})
    options[:background] = '#3b5998'
    options[:foreground] = '#ffffff'
    iconfont('fontawesome-facebook', options)
  end
end
