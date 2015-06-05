class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :last_name
      t.string :location
      t.integer :telephone
      t.text :info
      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
