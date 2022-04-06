class ThreemonthsGoalsController < ApplicationController
  
  
  def new
    @users = User.find(params[:users_id])
    @form = Form::ProductCollection.new
  end

  def create
    @users = User.find(params[:users_id])
    @form = Form::ThreemonthsGoalCollection.new(threemonths_goal_collection_params)

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
  def threemonths_goal_collection_params
    params
      .require(:form_threemonths_goal_collection)
      .permit(threemonths_goals_attributes: :content)
  end
end

