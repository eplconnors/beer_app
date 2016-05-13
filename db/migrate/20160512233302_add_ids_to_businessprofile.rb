class AddIdsToBusinessprofile < ActiveRecord::Migration
  def change
    add_reference :businessprofiles, :atmosphere, index: true, foreign_key: true
    add_reference :businessprofiles, :attraction, index: true, foreign_key: true
  end
end
