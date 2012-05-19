class ItemsController < ApplicationController
  respond_to :html, :js
  
  def index
    @user = User.find(User.first)
    @items = @user.items
    respond_with @items
  end
  
  def show
    @user = User.find(User.first)
    @item = @user.items.find(params[:id])
    respond_with @item
  end
end
