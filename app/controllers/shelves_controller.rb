class ShelvesController < ApplicationController
  before_filter :ensure_logged_in, :except=>[:index,:show]
  def index
    @shelves=[]
    if(current_user)
      @shelves=current_user.shelves
    else
      @shelves=Shelf.all
    end
  end
  def new
    @shelf=current_user.shelves.new
  end
  def create
    @shelf=Shelf.new(params[:shelf])
    if(@shelf.save)
      flash[:notice]="Shelf created successfully"
      redirect_to @shelf
    else
      flash[:error]="There was a problem in creating the shelf"
      render :action=>:new
    end
  end
  def show
    @shelf=Shelf.find(params[:id])
  end
end
