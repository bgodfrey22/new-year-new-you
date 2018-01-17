class ExercisesController < ApplicationController
  before_action :all_exercises, only: [:index, :create, :update, :destroy]
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  
  # GET /exercises/new
  def new
    @exercise = Exercise.new
  end

  # GET /exercises/1/edit
  def edit
  end

  # POST /exercises
  def create
    @exercise = Exercise.create(exercise_params)
  end

  # PATCH/PUT /exercises/1
  def update
    @exercise.update(exercise_params)
  end

  # DELETE /exercises/1
  def destroy
    @exercise.destroy
  end

  private
    def all_exercises
      @exercises = Exercise.all
    end 
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_params
      params.require(:exercise).permit(:name, :muscle_group, :image)
    end
end
