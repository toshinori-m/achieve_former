class ThreemonthsGoalsController < ApplicationController
  

  def new
    @threemonths_goals = ThreemonthsGoal.where(threemonths_goals_id: params[:id])
  end
  
  def create
    @threemonths_goals = ThreemonthsGoal.where(threemonths_goals_id: params[:id])

    if @threemonths_goals.save
      redirect_to root_path
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