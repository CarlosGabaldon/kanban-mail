class AddCcToItem < ActiveRecord::Migration
  def change
    add_column :items, :cc, :string
  end
end
