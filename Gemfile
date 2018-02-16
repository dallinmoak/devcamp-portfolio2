source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
#friendly
gem 'friendly_id', '~> 5.1.0' # "works with changing our id's in our URL are strings instead of numbers, we used it for our blog titles"
#devise
gem 'devise', '~> 4.4', '>= 4.4.1'# " Used to create users and authentication for our website"
#bootstrap
gem 'warden', '~> 1.2', '>= 1.2.7' #this helps devise do its thing, it's explicitly called here for my production server(heroku)
gem 'bootstrap', '~> 4.0.0' # "Provides bootstrap styles, requires some additions to application.js and application.scss before it will function. Also requires Jquery, which is not provided by default after rails 5.1"
gem 'jquery-rails' # "Needed for bootstrap if trying to use after rails 5.1"
gem 'dmoak_practice_gem', '~> 0.1.1' # "The custom gem for adding the copyright message"
#petergate for authorizing users for different tasks
gem 'petergate', '~> 1.8', '>= 1.8.1' # "Works with devise to provide authorization and admins etc,"
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3' # "Working with fonts for styles etc"
gem 'kaminari', '~> 1.1', '>= 1.1.1'  # "Is used to help provide pagination
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1' # "We brought this in to help with our drag and drop for portfolios used with html.sortable.js that we imported by hand "
gem 'carrierwave', '~> 1.2', '>= 1.2.2'  # " First of 4 gems for photo uploading"
gem 'carrierwave-aws', '~> 1.3'# "Second of 4 gems for photo uploading"
gem 'mini_magick', '~> 4.8' # "Third of 4 gems for photo uploading"
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1' # "Fourth of 4 gems for photo uploading, also used as the secrets file for the aws keys etc"
gem 'cocoon', '~> 1.2', '>= 1.2.11' # helps with adding dynamic forms
gem 'gritter', '~> 1.2' # custom alert messages. requires j-query
gem 'twitter', '~> 6.2' #for tweeting
gem 'redis', '~> 3.3', '>=3.3.3' #a "no-sql" database we used for doing live comments
gem 'redcarpet', '~> 3.4' #parses markdown
gem 'coderay', '~> 1.1', '>= 1.1.2' #syntax hilighting 

ruby "2.4.2"