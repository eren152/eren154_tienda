class CreateArticulos < ActiveRecord::Migration
  def self.up
    create_table :articulos do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :precio
      t.integer :cantidad

      t.timestamps
    end
  end

  def self.down
    drop_table :articulos
  end
end
