class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :duration
      t.integer :listeners
      t.integer :playcount
      t.artist_id :

      t.timestamps
    end
  end
end
