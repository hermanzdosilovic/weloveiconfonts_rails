Gem::Specification.new do |gem|
  gem.name                  = 'weloveiconfonts_rails'
  gem.version               = '1.0.0'
  gem.date                  = '2015-08-19'
  gem.summary               = 'We Love Icon Fonts'
  gem.description           = 'We must stop here, this is icon fonts country for Rails!'
  gem.authors               = ['Herman Zvonimir Došilović']
  gem.email                 = 'hermanz.dosilovic@gmail.com'
  gem.files                 = Dir["{lib,app}/**/*"]
  gem.require_paths         = ["lib"]
  gem.homepage              = 'https://github.com/hermanzdosilovic/weloveiconfonts_rails'
  gem.license               = 'None'

  gem.add_dependency 'sass-rails', '~> 5.0'
  gem.add_dependency 'jquery-rails', '~> 4.0'
  gem.add_dependency 'rails', '>= 3.0'
end
