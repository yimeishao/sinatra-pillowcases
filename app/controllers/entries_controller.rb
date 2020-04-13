class EntriesController < ApplicationController

    get '/entries/new' do 
        if !Helpers.is_logged_in?(session)
            redirect '/'
        end 
        erb :"entries/new" 
    end 

    post '/entries' do
        entry = Entry.create(params)
        user = Helpers.current_user(session)
        entry.user = user 
        entry.save
        redirect to "/profile/#{user.id}"
    end 

    get '/entries/:id' do 
        if !Helpers.is_logged_in?(session)
            redirect '/'
        end 
        @entry = Entry.find_by(id: params[:id])
        if !@entry
            redirect to '/'
        end 
        erb :"entries/show"
    end 

    get '/entries/:id/edit' do 
        @entry = Entry.find_by(id: params[:id])
        if !Helpers.is_logged_in?(session) || !@entry || @entry.user !=Helpers.current_user(session)
            redirect to "/"
        end 
        erb :"entries/edit"
    end 

    patch '/entries/:id' do 
        entry = Entry.find_by(id: params[:id])
        if entry && entry.user == Helpers.current_user(session)
            entry.update(params[:entry])
            redirect to "/entries/#{entry.id}"
        else 
            redirect to "/"
        end 
        erb :"entries/show"
    end 

    delete '/entries/:id/delete' do 
        entry = Entry.find_by(id: params[:id])
    if entry && entry.user == Helpers.current_user(session)
      entry.destroy
    end
    redirect to "/profile/#{entry.user.id}"
  end


end 