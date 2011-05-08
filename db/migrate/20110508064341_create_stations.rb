class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.integer :remote_id
      t.string :name
      t.string :so2
      t.string :no2
      t.string :particles
      t.string :o3
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
    add_index(:stations, :remote_id, :unique => true)
  end
end
