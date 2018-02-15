class AddArtistForeignKeyToTracks < ActiveRecord::Migration[5.1]
  def change
    add_index :tracks, :artist_id
    add_foreign_key :tracks, :artists
  end
end
