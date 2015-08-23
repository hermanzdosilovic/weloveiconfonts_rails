module WeLoveIconFontsHelper
  def iconfont_facebook(options = {})
    set_default(options, :background, '#4b70ab')
    set_default(options, :foreground, '#ffffff')
    iconfont('fontawesome-facebook', options)
  end

  def iconfont_linkedin(options = {})
    set_default(options, :background, '#0087be')
    set_default(options, :foreground, '#ffffff')
    iconfont('zocial-linkedin', options)
  end

  def iconfont_github(options = {})
    set_default(options, :background, '#333333')
    set_default(options, :foreground, '#ffffff')
    iconfont('fontawesome-github', options)
  end

  def iconfont_bitbucket(options = {})
    set_default(options, :background, '#205081')
    set_default(options, :foreground, '#ffffff')
    iconfont('zocial-bitbucket', options)
  end

  def iconfont_mail(options = {})
    set_default(options, :background, '#dd4b39')
    set_default(options, :foreground, '#ffffff')
    iconfont('zocial-email', options)
  end

  def iconfont_document(options = {})
    set_default(options, :background, '#fb7629')
    set_default(options, :foreground, '#ffffff')
    iconfont('entypo-doc-text', options)
  end

  private

  def set_default(options, key, value)
    options[key] = value if options[key].to_s.empty?
  end
end
