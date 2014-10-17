class AddWorkoutToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :workout, :integer
  end
end
