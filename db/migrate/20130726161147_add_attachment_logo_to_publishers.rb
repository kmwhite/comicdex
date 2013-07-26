class AddAttachmentLogoToPublishers < ActiveRecord::Migration
  def self.up
    remove_column :publishers, :logo
    change_table :publishers do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :publishers, :logo
    create_table :publishers do |t|
      t.binary :logo
    end
  end
end
