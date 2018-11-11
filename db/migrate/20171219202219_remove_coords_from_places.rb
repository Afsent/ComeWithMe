class RemoveCoordsFromPlaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :places, :coords, :string
  end
end
