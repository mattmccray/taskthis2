# Load the rails application
require File.expand_path('../application', __FILE__)

# HAML Settings
Haml::Template.options[:format] = :html5
Haml::Template.options[:attr_wrapper] = '"'

# SASS Settings
Sass::Plugin.add_template_location("#{Rails.root}/app/styles/", "#{Rails.root}/public/stylesheets/")

# Initialize the rails application
Taskthis2::Application.initialize!
