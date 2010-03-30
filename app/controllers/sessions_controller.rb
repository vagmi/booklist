class SessionsController < ApplicationController
  def new
    @user_session=UserSession.new
  end
  def create
    @user_session=UserSession.new(params[:user_session])
    if(@user_session.save)
      flash[:notice]="Logged in successfully"
      redirect_to :root_path
    else
      flash[:error]="Unable to login"
      render :action=>:new
    end
  end
  def destroy
  end
end
