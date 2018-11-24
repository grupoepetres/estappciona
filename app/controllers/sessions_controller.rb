class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    user = User.find_by(correo: params[:session][:correo].downcase, password: params[:session][:password])
    if user
      log_in user
      redirect_to :root
    else
      flash[:danger] = 'Invalida la combinacion correo/password'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to :root
  end


end
