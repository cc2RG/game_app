class CopiesController < ApplicationController

def index
  
end  

def create
  current_user.copies.create(copy_params)
  redirect_to copies_path
end  

def new
  @copy = Copy.new
end

def edit
  @copy = Copy.find(params[:id])
end  

def update
  copy = current_user.copies.find(params[:id])
  copy.update(copy_params)
  redirect_to copies_path
end  

def destroy
  copy = current_user.copies.find(params[:id])
  copy.destroy
  redirect_to copies_path
end  

private
def copy_params
  params.require(:copy).permit(:game_id, :rating)
end  

end
