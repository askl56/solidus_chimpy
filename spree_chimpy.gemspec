
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_chimpy'
  s.version     = '1.0.5'
  s.summary     = 'MailChimp/Solidus integration using the mailchimp gem'
  s.description = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Joshua Nussbaum, Andrew Scott'
  s.email     = 'josh@godynamo.com'
  s.homepage  = 'http://www.godynamo.com'
  s.license   = %q(BSD-3)

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'gibbon', '~> 2'
  s.add_dependency 'solidus_core', '~> 2.5'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'launchy'
end
