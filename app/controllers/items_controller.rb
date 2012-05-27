class ItemsController < ApplicationController
  before_filter :get_user
  respond_to :html, :js
  
  def index
    @new_items = @user.items.where({:queue => "NEW"}).all
    @action_items = @user.items.where({:queue => "ACTION"}).all
    @hold_items = @user.items.where({:queue => "HOLD"}).all
    @done_items = @user.items.where({:queue => "DONE"}).all
    respond_with(@new_items, @action_items, @hold_items, @done_items)
  end
  
  def show
    @item = @user.items.find(params[:id])
    @item_queues = Item.queues
    respond_with(@item, @item_queues)
  end
  
  def update
    @item = Item.find(params[:id])
    @item.update_attributes(params[:item])
    respond_with(@item, :location => items_url)
  end
  
  def load
    Item.load_sources @user
    redirect_to items_url
  end
  
  private
  def get_user
    @user = User.find(User.first)
  end
end
