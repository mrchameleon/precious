require "rubygems"
require "bundler"
require "gollum"
Bundler.require(:default)

require "gollum/frontend/app"

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['admin', 'admin']
end

Precious::App.set(:gollum_path, '/path/to/gollum_repo')
Precious::App.set(:wiki_options, {})
run Precious::App
