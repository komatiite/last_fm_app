class CreateAlbumTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :album_tracks do |t|
      t.integer :album_id
      t.integer :track_id

      t.timestamps
    end
  end
end
