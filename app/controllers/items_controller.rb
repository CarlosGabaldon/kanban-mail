class ItemsController < ApplicationController
  respond_to :html, :js
  
  def index
    @user = User.find(User.first)
    @items = @user.items
    respond_with @items
  end
end
