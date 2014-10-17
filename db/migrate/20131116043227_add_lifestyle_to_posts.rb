class AddLifestyleToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :lifestyle, :integer
  end
end
