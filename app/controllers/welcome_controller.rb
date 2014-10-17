class WelcomeController < ApplicationController
  def index
    unless current_user.nil?
      redirect_to :data
    end
  end
end
