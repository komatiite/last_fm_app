class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :summary
      t.string :image
      t.integer :listeners
      t.integer :plays

      t.timestamps
    end
  end
end
