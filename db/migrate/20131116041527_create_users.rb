class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
