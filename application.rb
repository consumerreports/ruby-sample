require 'rubygems'
require 'sinatra'
require 'debugger'

class WebApp < Sinatra::Base
  
  set :static, true
  set :public_folder, File.dirname(__FILE__) + '/public'
  set :environment, :development
  set :logging, :true

  get '/' do
  	send_file File.expand_path('index.html', settings.public_folder)
  end
  
  get '/unbounce/:unbounce' do
    urls = {
      'shoutout' => '4d3d594e-c979-11e3-b71e-22000ac464fa'
      }
    urls.collect do |key,val|
      if(params[:unbounce]==key)
        "<html><meta http-equiv='refresh' content='1;URL=http://unbouncepages.com/#{val}/'><body><CENTER><img alt='Loading...' src='http://ec.consumerreports.org/ec/images/cro/ux/loading.gif' /><br/>Loading...</CENTER></body></html>" 
      else # show a friendly 404
        "<html><body><h1>#{params[:unbounce].capitalize} is not a valid route.</body></html>"
      end
    end
  end

  run! if app_file == $0
end