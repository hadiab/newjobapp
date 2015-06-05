class CreateJobs < ActiveRecord::Migration
  def self.up
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.string :salary
      t.text :require
      t.text :description
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :jobs
  end
end
