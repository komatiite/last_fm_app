class CreateAlbumTags < ActiveRecord::Migration[5.1]
  def change
    create_table :album_tags do |t|
      t.integer :album_id
      t.integer :tag_id
      t.integer :rank

      t.timestamps
    end
  end
end
