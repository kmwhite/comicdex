class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title, null: false
      t.text :description
      t.integer :number, null: false
      t.binary :cover
      t.date :publication_date, null: false
      t.references :volume

      t.timestamps
    end
    add_index :issues, :volume_id
  end
end
