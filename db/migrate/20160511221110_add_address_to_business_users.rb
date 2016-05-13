class AddAddressToBusinessUsers < ActiveRecord::Migration
  def change
    add_column :business_users, :address, :string
  end
end
