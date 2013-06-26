class AddAttachmentPictureToDiscounts < ActiveRecord::Migration
  def self.up
    change_table :discounts do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :discounts, :picture
  end
end
