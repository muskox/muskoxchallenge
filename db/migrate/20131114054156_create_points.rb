class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :user_id
      t.integer :nutrition
      t.integer :workout
      t.integer :mobililze
      t.integer :supplement
      t.integer :lifestyle

      t.timestamps
    end
  end
end
