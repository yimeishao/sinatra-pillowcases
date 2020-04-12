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
end 