class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name

      t.timestamps
    end

    #Event.create(:name=>'General')
  end
end
