# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(params_user)

    if @user.save
      flash[:notice] = 'Success create new user'
      redirect_to root_path
    else
      flash[:error] = 'Data not valid'
      render 'new'
    end
  end

  def params_user
    params.require(:user).permit(:username, :email, :password, :humanizer_answer, :humanizer_question_id)
  end
end
