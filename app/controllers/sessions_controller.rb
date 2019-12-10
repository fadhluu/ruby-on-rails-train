# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    username = params[:username]
    password = params[:password]

    # user = User.where('username').first
    user = User.find_by_username(params[:username])
    unless user.blank?
      user_password = BCrypt::Engine.hash_secret(password, user.password_salt)
    end
    if !user_password.blank? && user.password_hash.eql?(user_password)
      session[:user] = user.id
      flash[:notice] = "Welcome #{user.username}"
      redirect_to root_path
    else
      params[:username]
      flash[:error] = 'data not valid'
      render 'new'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
