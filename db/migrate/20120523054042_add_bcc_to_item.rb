class AddBccToItem < ActiveRecord::Migration
  def change
    add_column :items, :bcc, :string
  end
end
