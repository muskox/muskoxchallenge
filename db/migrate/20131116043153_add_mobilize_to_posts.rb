class AddMobilizeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :mobilize, :integer
  end
end
