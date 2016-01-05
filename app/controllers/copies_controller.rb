class CopiesController < ApplicationController

def index
  @copies = Copy.where(:user_id == current_user.id)
end  






end
