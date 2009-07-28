class AddAttachmentsPhotoToArticulo < ActiveRecord::Migration
  def self.up
    add_column :articulos, :photo_file_name, :string
    add_column :articulos, :photo_content_type, :string
    add_column :articulos, :photo_file_size, :integer
    add_column :articulos, :photo_updated_at, :datetime
  end

  def self.down
    remove_column :articulos, :photo_file_name
    remove_column :articulos, :photo_content_type
    remove_column :articulos, :photo_file_size
    remove_column :articulos, :photo_updated_at
  end
end
