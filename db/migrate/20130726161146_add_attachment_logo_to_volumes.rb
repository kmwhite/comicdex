class AddAttachmentLogoToVolumes < ActiveRecord::Migration
  def self.up
    change_table :volumes do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :volumes, :logo
  end
end
