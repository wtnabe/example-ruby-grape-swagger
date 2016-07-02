require 'grape'
require 'grape-swagger'

class MyAPI < Grape::API
  format :json

  desc 'dumb endpoint'
  get :foo do
    {}
  end

  resource :statuses do
    desc 'return a public timeline'
    get :public_timeline do
      present :statuses, []
    end
  end

  add_swagger_documentation mount_path: '/docs/api-docs/'
end
