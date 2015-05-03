class UsersController < ApplicationController

  def new
    #@user = User.new
  end

  def create
    #@user = User.create(user_params)
    #if @user.valid?
    #  session[:user_id] = @user.id
    #  redirect_to '/index'
    #else
    #  @errors = @user.errors
    #  render :'new'
    #end
  end

  def forgot

  end

  def forgotten

  end

  private

  def user_params
    #params.require(:user).permit(:email,:name,:password,:user_type)
  end

end
