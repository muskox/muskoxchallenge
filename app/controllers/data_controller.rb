class DataController < ApplicationController
  
  def index
    if current_user.nil?
      redirect_to :controller => 'welcome', :action => 'index'
    end

    points = Post.where("user_id = ? AND created_at > ?", current_user.id, 3.months.ago) 

    @workoutlist = []
    @mobilizelist = []
    @dateslist = []

    points.each do |p|
      @workoutlist << p.workout
      @mobilizelist << p.mobilize
      @dateslist << p.created_at.yesterday.strftime("%b%e") # The day you log points is one day after th event
    end


    @today_point = Post.where(:user_id => current_user.id, :created_at => Date.today..Date.today+1).count


  end

end
