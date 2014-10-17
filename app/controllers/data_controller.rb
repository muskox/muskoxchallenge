class DataController < ApplicationController
  
  def index
    if current_user.nil?
      redirect_to :controller => 'welcome', :action => 'index'
    end

    points = Post.where("user_id = ? AND created_at > ?", current_user.id, 3.months.ago) 

    @nutritionlist = []
    @workoutlist = []
    @mobilizelist = []
    @supplementlist = []
    @lifestylelist = []
    @dateslist = []

    points.each do |p|
      @nutritionlist << p.nutrition
      @workoutlist << p.workout
      @mobilizelist << p.mobilize
      @supplementlist << p.supplement
      @lifestylelist << p.lifestyle
      @dateslist << p.created_at.yesterday.strftime("%b%e") # The day you log points is one day after th event
    end


    @today_point = Post.where(:user_id => current_user.id, :created_at => Date.today..Date.today+1).count

    @show_lifestyle_points = 0

  end

end
