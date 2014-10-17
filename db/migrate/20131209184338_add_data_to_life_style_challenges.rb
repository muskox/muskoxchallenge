class AddDataToLifeStyleChallenges < ActiveRecord::Migration
  def change

  Lifestylechallenge.create(:name=>'Hydration', :description=>'Drink 1/2 your bodyweight in ounces of water per day.  For a 200 lb. person that means 100 oz.')
  Lifestylechallenge.create(:name=>'Sleeping', :description=>'Get at least 7 hours of sleep every day. You can break it up into daytime naps, just make sure it totals 7 hours.')
  Lifestylechallenge.create(:name=>'Mindfullness', :description=>'Practice 10 minutes of mindfulness in the form of meditation or journaling.')
  Lifestylechallenge.create(:name=>'Reading', :description=>'Spend 10 minutes a day reading something meaningful or that inspires you.')
  Lifestylechallenge.create(:name=>'Love', :description=>'Spend at least 10 minutes a day doing something you love.')
  Lifestylechallenge.create(:name=>'Kindness', :description=>'Practice one intentional random act of kindness or generosity toward another person each day.')


  end
end
