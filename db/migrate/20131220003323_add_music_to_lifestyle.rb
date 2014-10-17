class AddMusicToLifestyle < ActiveRecord::Migration
  def change
      Lifestylechallenge.create(:name=>'Music', :description=>'Spend 10 minutes a day playing music. This could be as simple as patting your hands on your thighs to be a drum. Singing and traditional instruments are great too.')
  end
end
