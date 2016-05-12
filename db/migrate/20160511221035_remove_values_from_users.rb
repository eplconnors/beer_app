class RemoveValuesFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    remove_column :users, :birthday, :date
    remove_column :users, :address, :string
    remove_column :users, :bio, :text
  end
end
