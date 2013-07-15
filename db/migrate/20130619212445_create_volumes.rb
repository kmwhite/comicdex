class CreateVolumes < ActiveRecord::Migration
  def change
    create_table :volumes do |t|
      # Do we need a logo field here? Should they have one to
      # differentiate something like:
      #
      # http://api.ning.com/files/pXBmM2-C1PIMnbTHh5Gd8Hsp3sf1cAuxuoM4GmsEkUTTZiAxfxaGw402wMzj3MW2Fsp39KjJqYEAm9GgOpIAD-387g7xfLn0/XMenLogo.jpg
      # from
      # http://mikeantjones.files.wordpress.com/2013/07/the_uncanny_x_men_logo_by_meganubis.png
      # ...  from
      # http://img228.imageshack.us/img228/6155/94214868bp2.gif
      #
      # They're all different versions of the same series
      t.string :name, null: false
      t.integer :number, null: false
      t.references :series

      t.timestamps
    end
    add_index :volumes, :series_id
  end
end
