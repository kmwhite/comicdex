class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      t.string :name
      t.integer :number
      t.references :series

      t.timestamps
    end
    add_index :volumes, :series_id
  end
end
