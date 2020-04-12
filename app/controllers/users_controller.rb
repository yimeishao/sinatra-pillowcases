class UsersController < ApplicationController 

get '/signup' do
    erb :"users/signup"
end 

post '/users' do 
    user = User.create(params)
    redirect to "/profile/#{user.id}"
end 

get '/profile/:id' do 
    @user = User.find_by(id: params[:id])
    erb :"users/profile"
end 
end 