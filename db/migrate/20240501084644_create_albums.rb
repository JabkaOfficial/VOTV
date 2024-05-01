class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :author
      t.integer :release_year
      t.binary :cover_image
      t.string :length
      t.integer :quantity

      t.timestamps
    end
  end
end
