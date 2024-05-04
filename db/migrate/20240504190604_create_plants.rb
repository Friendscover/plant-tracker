class CreatePlants < ActiveRecord::Migration[7.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.datetime :birthday
      t.datetime :last_watering

      t.timestamps
    end
  end
end
