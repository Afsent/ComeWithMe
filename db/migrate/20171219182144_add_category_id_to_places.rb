class AddCategoryIdToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :category_id, :integer
  end
end
