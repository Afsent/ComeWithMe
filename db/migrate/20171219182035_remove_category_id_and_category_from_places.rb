class RemoveCategoryIdAndCategoryFromPlaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :places, :category, :string
    remove_column :places, :category_id, :integer
  end
end
