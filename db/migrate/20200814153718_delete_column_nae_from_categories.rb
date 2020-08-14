class DeleteColumnNaeFromCategories < ActiveRecord::Migration[6.0]
  def change
  remove_column :categories, :nae
  end
end
