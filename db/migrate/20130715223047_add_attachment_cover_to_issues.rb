class AddAttachmentCoverToIssues < ActiveRecord::Migration
  def self.up
    remove_column :issues, :cover
    change_table :issues do |t|
      t.attachment :cover
    end
  end

  def self.down
    drop_attached_file :issues, :cover
    create_table :issues do |t|
      t.binary :cover
    end
  end
end
