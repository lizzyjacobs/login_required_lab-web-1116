class SessionsController < ApplicationController

  def new

  end

  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to secret_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/login'
  end


end
