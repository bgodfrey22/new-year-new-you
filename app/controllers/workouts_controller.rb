class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:add_exercise, :show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all 
  end

  def show
  end

  def new
    @workout = Workout.new
  end

  def edit
  end

  def connect_exercise
    @connect_exercise = ExercisesWorkout.create(exercise_id: params[@exercises.current_id], workout_id: params[@workout.current_id])
  end 

  def add_exercise
  end

  def create
    @workout = Workout.create(workout_params)
    redirect_to @workout 
  end

  def update
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'Exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout }
      else
        format.html { render :edit }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
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
    params.require(:workout).permit(:label, :exercises)
  end
end