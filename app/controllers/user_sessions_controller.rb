class UserSessionsController < ApplicationController
  def new
    @return_path = session[:return_path]
    @user_session=UserSession.new
  end
  def create
    @user_session=UserSession.new(params[:user_session])
    if(@user_session.save)
      flash[:notice]="Logged in successfully"
      if(params[:return_path])
        redirect_to params[:return_path]
      else
        redirect_to :root
      end
    else
      flash[:error]="Unable to login"
      render :action=>:new
    end
  end
  def destroy
  end
end
