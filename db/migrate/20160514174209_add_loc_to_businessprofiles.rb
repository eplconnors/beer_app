class AddLocToBusinessprofiles < ActiveRecord::Migration
  def change
    add_column :businessprofiles, :latitude, :float
    add_column :businessprofiles, :longitude, :float
  end
end
