class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @workouts = Workout.all
  end

  def show
  end

  def new
    @workout = Workout.new
    @exercises_workout = ExercisesWorkout.new
  end

  def create
    @workout = Workout.create(workout_params.merge({ user_id: current_user.id }))
    if @workout.save
      redirect_to workout_path(@workout.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @workout.update_attributes(workout_params)
      redirect_to workouts_path(@workout)
    else
      render :edit
    end
  end
  
  def delete_exercise
    exercises_workout = ExercisesWorkout.find(params[:id])
    exercises_workout.destroy
  end

  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_url, notice: 'Workout was successfully destroyed.' }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_workout
    @workout = Workout.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def workout_params
    params.require(:workout).permit(:label, :user_id, exercises_workouts_attributes: [:id, :exercise_id, :_destroy])
  end
end
