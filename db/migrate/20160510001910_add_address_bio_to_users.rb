class AddAddressBioToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address, :string
    add_column :users, :bio, :text
  end
end
