class AddFromToItem < ActiveRecord::Migration
  def change
    add_column :items, :from, :string
  end
end
