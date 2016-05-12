class RemovePhoneNumberFromBusinessUsers < ActiveRecord::Migration
  def change
    remove_column :business_users, :phone_number, :integer
  end
end
