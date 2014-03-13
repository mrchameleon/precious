require "rubygems"
require "bundler"
require "gollum"
Bundler.require(:default)

require "gollum/frontend/app"

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  [username, password] == ['dev', 'test']
end

Precious::App.set(:gollum_path, '/home/ryan/dev/precious')
Precious::App.set(:wiki_options, {})
run Precious::App
