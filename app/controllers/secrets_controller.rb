class SecretsController < ApplicationController
before_action :logged_in?

  def show
    authenticate_user
  end




end
