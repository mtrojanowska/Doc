class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def index
    # @exercises = Exercise.where(status: 'active').joins(:step)
    @exercises = Exercise.where('step_id = ?',
                                params[:step_id]).or(Exercise.where('section_id=?',
                                                                    params[:section_id]))
  end

  def create
    @exercise = Exercise.new(exercise_params)
    step = Step.find(exercise_params[:step_id])

    if @exercise.save
      redirect_to exercises_path(step_id: step.id)
    else
      render 'new'
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  private

  def exercise_params
    params.require(:exercise).permit(:exercise, :solution, :tag, :step_id, :section_id)
  end
end
