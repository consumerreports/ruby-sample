require 'rubygems'
require 'sinatra'

class WebApp < Sinatra::Base
  
  set :static, true
  set :public_folder, File.dirname(__FILE__) + '/public'

  get '/' do
  	send_file File.expand_path('index.html', settings.public_folder)
  end
  
  get '/unbounce' do
    "<html><meta http-equiv='refresh' content='1;URL=http://unbouncepages.com/4d3d594e-c979-11e3-b71e-22000ac464fa/'><body><CENTER><img alt='Loading...' src='http://ec.consumerreports.org/ec/images/cro/ux/loading.gif' /><br/>Loading...</CENTER></body></html>"
  end

  run! if app_file == $0
end