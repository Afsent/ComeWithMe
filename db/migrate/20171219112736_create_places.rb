class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :address
      t.string :coords
      t.integer :user_id
      t.timestamps
    end
  end
end
