class RemoveTitleFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :title, :string
    remove_column :users, :text, :text
  end
end
