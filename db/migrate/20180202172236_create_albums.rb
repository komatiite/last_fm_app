class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :cover
      t.datetime :release_date
      t.integer :listeners
      t.integer :playcount
      t.integer :artist_id

      t.timestamps
    end
  end
end
