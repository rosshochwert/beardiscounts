class AddAttachmentLogoToDiscounts < ActiveRecord::Migration
  def self.up
    change_table :discounts do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :discounts, :logo
  end
end
