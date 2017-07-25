require_relative '../images/service'
require 'sinatra/base'
require 'json'

class App < Sinatra::Base

  post '/api/add/images' do
    begin
      result = Images::Service.store(request['file'])
    rescue => StandardError
      status 503
      body 'We can´t save your file'
      result = StandardError
    end
    {success: 'Operation succesfully', file: result}.to_json
  end

end
