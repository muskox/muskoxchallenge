class RemoveFieldsPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :nutrition, :integer
    remove_column :posts, :supplement, :integer
    remove_column :posts, :lifestyle, :integer
    remove_column :posts, :event_id, :integer
  end
end
