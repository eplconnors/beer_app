class AddAttachmentAvatarToBusinessprofiles < ActiveRecord::Migration
  def self.up
    change_table :businessprofiles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :businessprofiles, :avatar
  end
end
