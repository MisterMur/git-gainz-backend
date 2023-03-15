class CompletedCircuitsController < ApplicationController
    before_action :set_completed_workout, only: [:create, :update]
    before_action :set_completed_circuit, only: [:update]
  
    def create
      @completed_circuit = CompletedCircuit.new(completed_circuit_params)
      @completed_circuit.completed_workout = @completed_workout
  
      if @completed_circuit.save
        render json: @completed_circuit, status: :created
      else
        render json: @completed_circuit.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @completed_circuit.update(completed_circuit_params)
        render json: @completed_circuit, status: :ok
      else
        render json: @completed_circuit.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def set_completed_workout
      @completed_workout = CompletedWorkout.find(params[:completed_workout_id])
    end
  
    def set_completed_circuit
      @completed_circuit = CompletedCircuit.find(params[:id])
    end
  
    def completed_circuit_params
      params.require(:completed_circuit).permit(:weight, :reps, :rest, :exercise_id)
    end
  end
  