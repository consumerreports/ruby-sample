require 'rubygems'
require 'sinatra'

class WebApp < Sinatra::Base
  
  set :static, true
  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
  	send_file File.expand_path('index.html', settings.public_folder)
  end

  run! if app_file == $0
end