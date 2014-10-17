class AddDataToEvents < ActiveRecord::Migration
  def change
    Event.create(:name=>'General')

  end
end
