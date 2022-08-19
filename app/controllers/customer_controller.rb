class CustomerController < ApplicationController
  def index
    u = User.find(params[:id])
    @user=u.customers
    #@user=Customer.all
  end

  def new 
    @user=User.all
  end

  def submit
    us=User.find(params[:email])
    cus=us.customers.new
    cus.f_name=params[:fname]
    cus.l_name=params[:lname]
    cus.email=params[:Email]
    #a=params[:phone]
    cus.phone=params[:phone].to_i
    #binding.pry
    cus.save
  end

end
