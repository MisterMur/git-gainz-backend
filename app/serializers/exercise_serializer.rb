class ExerciseSerializer < ActiveModel::Serializer
  attributes :id,:name,:circuits,:muscles
  def circuits
    customized_circuits = []

    object.circuits.each do |circuit|
      # Assign object attributes (returns a hash)
      # ===========================================================
      custom_circuit = circuit.attributes

      # ===========================================================
      customized_circuits.push(custom_circuit)
    end
    return customized_circuits
  end
end
