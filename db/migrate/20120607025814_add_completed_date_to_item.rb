class AddCompletedDateToItem < ActiveRecord::Migration
  def change
    add_column :items, :completed_date, :datetime
  end
end
