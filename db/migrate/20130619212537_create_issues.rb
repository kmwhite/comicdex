class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.text :description
      t.integer :number
      t.binary :cover
      t.date :publication_date
      t.references :volume

      t.timestamps
    end
    add_index :issues, :volume_id
  end
end
