class AddDescriptionToPlants < ActiveRecord::Migration[7.1]
  def change
    add_column :plants, :description, :string
  end
end
