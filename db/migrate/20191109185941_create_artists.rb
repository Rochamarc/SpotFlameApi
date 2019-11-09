class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :genre
      t.string :origin
      t.text :image
      t.integer :votes

      t.timestamps
    end
  end
end
