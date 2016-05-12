class AddAttachmentAvatarToBeers < ActiveRecord::Migration
  def self.up
    change_table :beers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :beers, :avatar
  end
end
