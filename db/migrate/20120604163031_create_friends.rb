class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name, :limit => 100, :null => false
      t.decimal :lat, :long, :precision => 15, :scale => 2, :null => false, :default => 0.0

      t.timestamps
    end
    
    add_index :friends, [:lat, :long], :unique => true
  end
end
