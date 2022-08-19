class UserController < ApplicationController
  def index
    @user=User.all
  end
  def create
    @email = User.new(email: params[:email])
    @email.save
 
  end
 
end
