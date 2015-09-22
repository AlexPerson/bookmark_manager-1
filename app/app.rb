require 'sinatra/base'
require_relative 'models/link'

class App< Sinatra::Base
  set :views, proc { File.join(root, '../views') }

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

end
