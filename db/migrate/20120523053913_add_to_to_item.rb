class AddToToItem < ActiveRecord::Migration
  def change
    add_column :items, :to, :string
  end
end
