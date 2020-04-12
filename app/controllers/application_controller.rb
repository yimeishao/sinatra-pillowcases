require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions #this is a hash 
    set :session_secret, "secret"
    #need to manually include this when using sinatra and shotgun 
    #otherwise the session would automatically clear with each new request
  end

  get "/" do 
      erb :welcome
  end

end
