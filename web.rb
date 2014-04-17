require 'sinatra'
set :public_folder, File.dirname(__FILE__) + '/public'
#use Rack::Static, :urls => ['/stylesheets', '/javascripts', '/images'], :root => settings.public_folder

#class Web < Sinatra::Base
  set :static, true
  get '/' do
  	send_file File.expand_path('index.html', settings.public_folder)
  end

  get '/local_env' do
  #  ENV.collect{|k,v| "#{k}=#{v}"}.join("<br/>")
  end
#end