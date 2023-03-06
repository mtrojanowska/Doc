class StepsController < ApplicationController
  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def show
    @step = Step.find(params[:id])
  end

  private

  def step_params
    params.require(:step).permit(:description, :solution, :task_id)
  end
end
