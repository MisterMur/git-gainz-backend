class Api::V1::CircuitsController < ApplicationController
  def index
    @circuits = Circuit.all
    render json: @circuits
  end

  def update
    @circuit.update(set_params)
    if @circuit.save
      render json: @circuit, status: :accepted
    else
      render json: { errors: @circuit.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @circuit = find_set
  end

  def create
    @circuit = Circuit.create(circuit_params)
    render json: @circuit
  end

  private

  def circuit_params
    params.require(:circuit).permit(:id,:reps,:weight,:rest)
  end

  def find_set
    @circuit = Circuit.find(params[:id])
  end
end
