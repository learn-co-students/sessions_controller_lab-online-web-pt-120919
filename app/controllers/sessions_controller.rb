class SessionsController < ApplicationController 
    def new 
    end 

    def create 
        #if name is nil, or if name is empty post create redirects to the login page. If name given redirect to "/"
        session[:name] = params[:name]
        if session[:name] == nil || session[:name].empty?
            redirect_to '/login'
        else 
            redirect_to '/'
        end 
    end 

    def destroy
        session.delete :name
    end 
end 