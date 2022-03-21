class GoalsController < ApplicationController
  before_action :set_user
  
  def show
    @goal = @user.goal
  end
  
  def edit
    @goal = Goal.find_or_initialize_by(user_id: @user.id)
  end
  
  def update
    @goal = Goal.find_or_initialize_by(user_id: @user.id)
    if @goal.update(goal_params)
      redirect_to user_goal_path(@user, @goal)
    else
      render :edit
    end
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def goal_params
    params.require(:goal).permit(:text)
  end
end