class AddNameToBusinessprofiles < ActiveRecord::Migration
  def change
    add_column :businessprofiles, :name, :string
  end
end
