class AddSentToItem < ActiveRecord::Migration
  def change
    add_column :items, :sent, :datetime
  end
end
