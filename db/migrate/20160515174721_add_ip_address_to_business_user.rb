class AddIpAddressToBusinessUser < ActiveRecord::Migration
  def change
    add_column :business_users, :ip_address, :string
  end
end
