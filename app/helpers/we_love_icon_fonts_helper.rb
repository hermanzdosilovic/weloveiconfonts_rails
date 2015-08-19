module WeLoveIconFontsHelper
  def iconfont_facebook(options = {})
    options[:background] = '#4b70ab' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('fontawesome-facebook', options)
  end

  def iconfont_linkedin(options = {})
    options[:background] = '#0087be' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('zocial-linkedin', options)
  end

  def iconfont_github(options = {})
    options[:background] = '#333333' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('fontawesome-github', options)
  end

  def iconfont_bitbucket(options = {})
    options[:background] = '#205081' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('zocial-bitbucket', options)
  end

  def iconfont_mail(options = {})
    options[:background] = '#dd4b39' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('zocial-email', options)
  end

  def iconfont_document(options = {})
    options[:background] = '#fb7629' if options[:background].to_s.empty?
    options[:foreground] = '#ffffff' if options[:foreground].to_s.empty?
    iconfont('entypo-doc-text', options)
  end
end
