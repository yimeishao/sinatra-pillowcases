class UsersController < ApplicationController 

get '/signup' do
    erb :"users/signup"
end 

post '/users' do 
    user = User.create(params)
    session[:user_id] = user.id
    #adding user id key to the session hash 
    #this allows us to check which user is logged in
    #when the user logs out, clear the entire session hash
    redirect to "/profile/#{user.id}"
end 

get '/profile/:id' do 
    if User.find_by(id: params[:id])
    @user = User.find_by(id: params[:id])
    else 
        redirect to "/"
    end 
    erb :"users/profile"
end 
end 