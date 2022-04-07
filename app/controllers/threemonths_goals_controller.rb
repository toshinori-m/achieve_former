class ThreemonthsGoalsController < ApplicationController
  
  
  def new
    @form = Form::ThreemonthsGoalCollection.new
  end

  def create
    @form = Form::ThreemonthsGoalCollection.new(threemonths_goal_collection_params)

    if @form.save
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

