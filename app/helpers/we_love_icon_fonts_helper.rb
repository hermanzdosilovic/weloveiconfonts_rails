module WeLoveIconFontsHelper
  def iconfont_facebook(options = {})
    options[:background] = '#3b5998' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('fontawesome-facebook', options)
  end
end
