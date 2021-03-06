Gem::Specification.new do |gem|
  gem.name                  = 'weloveiconfonts_rails'
  gem.version               = '1.1.1'
  gem.date                  = '2015-08-23'
  gem.summary               = 'We Love Icon Fonts'
  gem.description           = 'We must stop here, this is icon fonts country for Rails!'
  gem.authors               = ['Herman Zvonimir Došilović']
  gem.email                 = 'hermanz.dosilovic@gmail.com'
  gem.files                 = Dir["{lib,app}/**/*"]
  gem.require_paths         = ["lib"]
  gem.homepage              = 'https://github.com/hermanzdosilovic/weloveiconfonts_rails'
  gem.license               = 'None'

  gem.add_dependency 'sass-rails'
  gem.add_dependency 'jquery-rails'
  gem.add_dependency 'rails'
end
