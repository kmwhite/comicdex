class AddAttachmentLogoToSeries < ActiveRecord::Migration
  def self.up
    change_table :series do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :series, :logo
  end
end
