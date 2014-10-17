class AddEventidToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :event_id, :integer
  end
end
