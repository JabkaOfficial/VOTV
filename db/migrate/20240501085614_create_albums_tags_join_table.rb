class CreateAlbumsTagsJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :albums_tags, id: false do |t|
      t.belongs_to :album
      t.belongs_to :tag
      # t.index [:album_id, :tag_id]
      # t.index [:tag_id, :album_id]
    end
  end
end
