require "rubygems"
Bundler.require(:default)

require "gollum/frontend/app"

Precious::App.set(:gollum_path, '')
Precious::App.set(:wiki_options, {})
run Precious::App
