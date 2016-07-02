# -*- mode: ruby -*-

#require 'rack/cors'
require 'rack/swagger'

=begin
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [ :get, :post, :put, :delete, :options ]
  end
end
=end

load './app.rb'

run Rack::Cascade.new [
                  MyAPI,
                  Rack::Swagger.app(
                                File.expand_path("../docs/", __FILE__))]
