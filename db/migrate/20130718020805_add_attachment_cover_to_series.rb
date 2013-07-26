class AddAttachmentCoverToSeries < ActiveRecord::Migration
  def self.up
    change_table :series do |t|
      t.attachment :cover
    end
  end

  def self.down
    drop_attached_file :series, :cover
  end
end
