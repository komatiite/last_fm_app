class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :count
      t.boolean :retrieved

      t.timestamps
    end
  end
end
