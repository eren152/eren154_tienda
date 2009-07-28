class AddAttachmentsPhoto1Photo2Photo3AndPhoto4ToArticulo < ActiveRecord::Migration
  def self.up
    add_column :articulos, :photo1_file_name, :string
    add_column :articulos, :photo1_content_type, :string
    add_column :articulos, :photo1_file_size, :integer
    add_column :articulos, :photo1_updated_at, :datetime
    add_column :articulos, :photo2_file_name, :string
    add_column :articulos, :photo2_content_type, :string
    add_column :articulos, :photo2_file_size, :integer
    add_column :articulos, :photo2_updated_at, :datetime
    add_column :articulos, :photo3_file_name, :string
    add_column :articulos, :photo3_content_type, :string
    add_column :articulos, :photo3_file_size, :integer
    add_column :articulos, :photo3_updated_at, :datetime
    add_column :articulos, :photo4_file_name, :string
    add_column :articulos, :photo4_content_type, :string
    add_column :articulos, :photo4_file_size, :integer
    add_column :articulos, :photo4_updated_at, :datetime
  end

  def self.down
    remove_column :articulos, :photo1_file_name
    remove_column :articulos, :photo1_content_type
    remove_column :articulos, :photo1_file_size
    remove_column :articulos, :photo1_updated_at
    remove_column :articulos, :photo2_file_name
    remove_column :articulos, :photo2_content_type
    remove_column :articulos, :photo2_file_size
    remove_column :articulos, :photo2_updated_at
    remove_column :articulos, :photo3_file_name
    remove_column :articulos, :photo3_content_type
    remove_column :articulos, :photo3_file_size
    remove_column :articulos, :photo3_updated_at
    remove_column :articulos, :photo4_file_name
    remove_column :articulos, :photo4_content_type
    remove_column :articulos, :photo4_file_size
    remove_column :articulos, :photo4_updated_at
  end
end
