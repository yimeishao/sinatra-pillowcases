class UsersController < ApplicationController 

    get '/signup' do
        if Helpers.is_logged_in?(session)
            user = Helpers.current_user(session)
            redirect to "/profile/#{user.id}"
        end
        erb :"users/signup"
    end 

    get '/login' do 
        erb :"users/login"
    end 

    post '/login' do
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            #authenticate method comes from bcrypt
            session[:user_id] = @user.id
            redirect to "/profile/#{user.id}"
        else 
            redirect to '/login'
            #add error message later
            #maybe redirect to welcome page?
        end 
    end 

    post '/signup' do 
        user = User.create(params)
        if user.valid?
            session[:user_id] = user.id
        #adding user id key to the session hash 
        #this allows us to check which user is logged in
        #when the user logs out, clear the entire session hash
            redirect to "/profile/#{user.id}"
        else 
            redirect to '/signup'
            #change this to error message later
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