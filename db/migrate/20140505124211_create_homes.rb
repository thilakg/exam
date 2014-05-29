class CreateHomes < ActiveRecord::Migration
  def self.up
    create_table :homes do |t|
    	t.string :name
    	t.date   :dob
    	t.string :address
    	t.integer :mobile
      t.string :email
    	t.string :filename
      t.string :content_type
      t.string :imgtype        
      t.string :binary_data
  

      t.timestamps
    end
  end

  def self.down
    drop_table :homes
  end
end
