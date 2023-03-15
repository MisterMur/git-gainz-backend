class CompletedWorkoutsController < ApplicationController
    def create
      # Find the user and workout based on the user_id and workout_id params
      user = User.find(params[:user_id])
      workout = Workout.find(params[:workout_id])
  
      # Create a new completed workout record
      completed_workout = CompletedWorkout.new(user: user, workout: workout, completed_at: Time.now)
  
      # Loop through each circuit in the workout
      workout.circuits.each do |circuit|
        # Create a new completed circuit record and copy the values from the original circuit
        completed_circuit = CompletedCircuit.new(
          weight: circuit.weight,
          reps: circuit.reps,
          rest: circuit.rest,
          exercise_id: circuit.exercise_id
        )
  
        # Add the completed circuit to the completed workout
        completed_workout.completed_circuits << completed_circuit
      end
  
      # Save the completed workout
      completed_workout.save
  
      # Redirect the user to the completed workout show page
      redirect_to completed_workout_path(completed_workout)
    end
  end
  