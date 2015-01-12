class AddAttachmentPhotoToAdvertisments < ActiveRecord::Migration
  def self.up
    change_table :advertisments do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :advertisments, :photo
  end
end
