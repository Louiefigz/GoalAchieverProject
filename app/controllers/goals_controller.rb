class GoalsController < ApplicationController
  def index
    @goals = Goal.all
    respond_to do |f|
      f.html { render :index }
      f.json { render json: @goals}
    end
  end

  def new
    @goal = Goal.new
  end

  def create
    Goal.create(goal_params)
    redirect_to goals_path
  end

  def show
    @goal = Goal.find(params[:id])
    respond_to do |f|
      f.html { render :show }
      f.json { render json: @goal}
    end
  end


  private

  def goal_params
    params.require(:goal).permit(:content, :goal_category_id, :parent_id)
  end

end
