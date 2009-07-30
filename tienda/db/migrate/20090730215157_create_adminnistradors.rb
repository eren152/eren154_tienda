class CreateAdminnistradors < ActiveRecord::Migration
  def self.up
    create_table :adminnistradors do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :adminnistradors
  end
end
