class AddQueueToItem < ActiveRecord::Migration
  def change
    add_column :items, :queue, :string
  end
end
