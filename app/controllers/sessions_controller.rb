class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name] && session[:name] != ""
      redirect_to '/'
    elsif params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else 
      redirect_to '/login'
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end
end