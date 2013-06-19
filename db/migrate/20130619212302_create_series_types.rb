class CreateSeriesTypes < ActiveRecord::Migration
  def change
    create_table :series_types do |t|
      t.string :name
      t.string :schedule

      t.timestamps
    end
  end
end
