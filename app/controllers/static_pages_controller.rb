class StaticPagesController < ApplicationController
  def home
    @goal = current_user.goal.build if logged_in?
  end



  def threemonths_goal
  end

  def monthly_goal
  end

  def report
  end

  def training_menu
  end

  def participating_room
  end

  def like
  end

  def participationg_room_user
  end

  def message
  end
end
