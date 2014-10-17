class AddSupplmentToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :supplement, :integer
  end
end
