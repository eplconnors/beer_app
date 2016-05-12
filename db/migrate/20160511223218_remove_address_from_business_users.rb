class RemoveAddressFromBusinessUsers < ActiveRecord::Migration
  def change
    remove_column :business_users, :address, :string
  end
end
