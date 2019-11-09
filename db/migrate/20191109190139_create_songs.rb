class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :number
      t.string :length
      t.integer :votes
      t.integer :album_id

      t.timestamps
    end
  end
end
