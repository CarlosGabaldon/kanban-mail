class ItemsController < ApplicationController
  respond_to :html, :js
  
  def index
    @user = User.find(User.first)
    @new_items = @user.items.where({:queue => "NEW"}).all
    @action_items = @user.items.where({:queue => "ACTION"}).all
    @hold_items = @user.items.where({:queue => "HOLD"}).all
    @done_items = @user.items.where({:queue => "DONE"}).all
    respond_with(@new_items, @action_items, @hold_items, @done_items)
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
