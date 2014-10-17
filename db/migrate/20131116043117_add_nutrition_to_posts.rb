class AddNutritionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :nutrition, :integer
  end
end
