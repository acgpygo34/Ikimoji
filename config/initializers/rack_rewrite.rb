
if ENV['RACK_ENV'] == 'production'
  Ikimoji::Application.config.middleware.insert_before(Rack::Runtime, ::Rack::Rewrite) do
    r301 %r{.*}, 'https://www.ikimoji.com$&', :if => Proc.new {|rack_env|
      rack_env['SERVER_NAME'] == 'ikimoji.herokuapp.com'
    }
  end
end
