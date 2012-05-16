class AddPermalinkToItem < ActiveRecord::Migration
  def change
    add_column :items, :permalink, :string
  end
end
