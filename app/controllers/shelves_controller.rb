class ShelvesController < ApplicationController
  def index
    @shelves=[]
    if(current_user)
      @shelvescurrent_user.shelves
    else
      @shelves=Shelf.all
    end
  end
end
