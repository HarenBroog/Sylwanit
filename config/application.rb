require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sylwanit
  class Application < Rails::Application
    # config.action_controller.asset_host = "#{ENV['S3_BUCKET_NAME']}.s3-website.#{ENV['S3_REGION']}.amazonaws.com"
    config.sass.preferred_syntax = :sass
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
    config.assets.paths << Rails.root.join('public', 'assets', 'font-awesome')
    config.assets.paths << Rails.root.join("vendor","assets","bower_components","bootstrap-sass-official","assets","fonts")
    config.assets.enabled = true
    end
end
