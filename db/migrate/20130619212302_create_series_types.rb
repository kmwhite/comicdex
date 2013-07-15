class CreateSeriesTypes < ActiveRecord::Migration
  def change
    create_table :series_types do |t|
      t.string :name, null: false
      t.string :schedule, null: false

      t.timestamps
    end
  end
end
