class AddMottoToBusinessprofile < ActiveRecord::Migration
  def change
    add_column :businessprofiles, :motto, :string
  end
end
