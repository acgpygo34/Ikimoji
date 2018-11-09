# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

if ENV['RACK_ENV'] == 'production'
 use Rack::Rewrite do
    r301 %r{.*}, 'http://www.ikimoji.com$&', :if => Proc.new {|rack_env|
      rack_env['SERVER_NAME'] != 'www.ikimoji.com'
    }
 end
end

run Rails.application
