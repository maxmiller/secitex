git_source(:github) { |repo| "https://github.com/#{repo}.git" }
source 'https://rubygems.org'


ruby '2.5.1'


gem 'bootstrap_form'
gem 'validates_cpf_cnpj'
gem 'validates'
gem "select2-rails"
gem 'cancancan', '~> 1.10'
gem "paperclip", "~> 5.2.0"
gem 'mercadopago-sdk'
gem 'rake', '12.3.1'
gem 'exception_notification'
gem 'whenever', :require => false
gem "nested_form"
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'google_drive'
gem 'rest-client'
gem "recaptcha", require: "recaptcha/rails"
gem 'rubyzip', '>= 1.2.1'
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: 'c8ac844'
gem 'axlsx_rails'

gem 'rails', '~> 5.2.3'
# gem 'mysql2', '>= 0.3.13', '< 0.5'
gem 'pg', '~> 1.1', '>= 1.1.4'
gem 'puma', '~> 4.1', '>= 4.1.1'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 1.0', group: :doc
gem 'json', '~> 2.2'

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'better_errors'

gem "letter_opener"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'ultrahook'
  gem 'rspec-rails', '~> 3.6'
  gem 'factory_bot_rails'
  gem 'cpf_faker'
  gem "faker"
  gem 'active_record_query_trace'
  gem 'colorize'
  gem 'pry-byebug'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1'
  gem "capybara"
  gem 'capybara-email'
  # gem "guard-rspec"
  gem "launchy"
  gem "database_cleaner"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
