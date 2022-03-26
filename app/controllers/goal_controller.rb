class GoalController < ApplicationController

  
  def show
    @goal = @user.goal
  end
  

  def edit
    @goal = Goal.find(params[:id])
  end
  

def update
  @goal = Goal.find(params[:id])
  if @goal.update(goal_params)
    redirect_to  goal_path
  else
    render :edit
end

  private
  def goal_params
    params.require(:goal).permit(:text)
  end
end