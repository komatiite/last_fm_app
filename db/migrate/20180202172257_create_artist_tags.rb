class CreateArtistTags < ActiveRecord::Migration[5.1]
  def change
    create_table :artist_tags do |t|
      t.integer :artist_id
      t.integer :tag_id
      t.integer :rank

      t.timestamps
    end
  end
end
