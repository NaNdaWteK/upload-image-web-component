require 'sinatra/base'
require_relative 'system/routes/images'

class App < Sinatra::Base
  
  set :public_folder, 'public/'

  get '/' do
    File.read(File.join('public', 'index.html'))
  end

end
