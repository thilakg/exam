class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
    	 t.string :content_type
	      t.string :imgtype
        t.string :filename
        t.string :binary_data
        t.integer :hid

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
