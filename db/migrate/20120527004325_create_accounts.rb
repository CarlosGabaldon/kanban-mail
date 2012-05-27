class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :account_type
      t.string :user_name
      t.string :password

      t.timestamps
    end
  end
end
