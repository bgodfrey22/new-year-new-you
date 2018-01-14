class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:add_exercise, :show, :edit, :update, :destroy]
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

  def edit
  end

  def connect_exercise
    @connect_exercise = ExercisesWorkout.create(exercises_workout_params)
    redirect_to workouts_path(id: params[:id])
  end 

  def add_exercise
  end

  def create
    @workout = Workout.create(workout_params)
    if @workout.save
      redirect_to edit_workout_path(@workout.id)
    else
      render :new
    end
  end

  def update
    @workout = Workout.find_by(id: params[:id])
    @exercises_workout = ExercisesWorkout.create(exercises_workout_params)
    if @workout.update_attributes(workout_params)
      redirect_to workouts_path(@workout.id)
    else
      render :edit
    end
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
    params.require(:workout).permit(:label)
  end
  def exercises_workout_params
    params.require(:exercises_workout).permit(:exercise_id, :workout_id, :destroy)
  end
end
