class CreateLifestylechallenges < ActiveRecord::Migration
  def change
    create_table :lifestylechallenges do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
