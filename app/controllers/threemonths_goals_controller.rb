class ThreemonthsGoalsController < ApplicationController
  

  def new
    @threemonths_goals = ThreemonthsGoal.new
  end

  def create
    @threemonths_goals = ThreemonthsGoal.new(threemonths_goals_params)
    @threemonths_goals.user_id = current_user.id
    if @threemonths_goals.save
      redirect_to  root_path
    else
      render :new
    end
  end

  def index
    @threemonths_goals = ThreemonthsGoal.all
  end
  
  def show
    @threemonths_goals = ThreemonthsGoal.all
  end

  private
  def threemonths_goals_params
    params.require(:threemonths_goal).permit(:content)
  end
end