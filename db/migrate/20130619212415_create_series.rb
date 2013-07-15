class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name, null: false
      t.text :description
      t.references :publisher
      t.references :series_type

      t.timestamps
    end
    add_index :series, :publisher_id
    add_index :series, :series_type_id
  end
end
