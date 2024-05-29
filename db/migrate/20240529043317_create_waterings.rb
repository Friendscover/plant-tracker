class CreateWaterings < ActiveRecord::Migration[7.1]
  def change
    create_table :waterings do |t|
      t.datetime :last_watering
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
