class RemoveValuesFromBusinessUsers < ActiveRecord::Migration
  def change
    remove_column :business_users, :name, :string
    remove_column :business_users, :birthday, :date
    remove_column :business_users, :address, :string
    remove_column :business_users, :bio, :text
  end
end
