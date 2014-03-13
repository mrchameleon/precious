module Precious
  class App < Sinatra::Base

    auth_config_path = "auth_config.yml"
    if File.exists?(auth_config_path)
      AUTH_CONFIG = YAML.load_file(auth_config_path)
    end

    use Rack::Auth::Basic, "Restricted Area" do |username, password|
      [username, password] == [AUTH_CONFIG['user'], AUTH_CONFIG['pass']]
    end
  end
end
