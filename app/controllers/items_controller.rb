class ItemsController < ApplicationController
  respond_to :html, :js
  
  def index
    @user = User.find(User.first)
    @new_items = @user.items.where({:queue => "new"}).all
    @action_items = @user.items.where({:queue => "action"}).all
    @hold_items = @user.items.where({:queue => "hold"}).all
    @completed_items = @user.items.where({:queue => "completed"}).all
    respond_with(@new_items, @action_items, @hold_items, @completed_items)
  end
  
  def show
    @user = User.find(User.first)
    @item = @user.items.find(params[:id])
    @item_queues = Item.queues
    respond_with(@item, @item_queues)
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])
    respond_with(@item, :location => items_url)
  end
end
