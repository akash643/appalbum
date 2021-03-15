class AddColumToAlbum < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :album_image, :string 
  end
end
