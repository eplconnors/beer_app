class AddAddressToBusinessprofiles < ActiveRecord::Migration
  def change
    add_column :businessprofiles, :address, :string
  end
end
