# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Schedule.destroy_all
Workout.destroy_all
Exercise.destroy_all
# Set.destroy_all
WorkoutSchedule.destroy_all
UserSchedule.destroy_all
WorkoutExercise.destroy_all

User.create(name:'Brad',username:'BradBro',password:'1234')
User.create(name:'Chad',username:'ChadMan',password:'1234')

Schedule.create(name:'Week 1 Strength')
Schedule.create(name:'Week 1 Hypertrophy')
Schedule.create(name:'Week 2 Crossfit')
Schedule.create(name:'Week 2 Cardio')


Workout.create(name:'Pull')
Workout.create(name:'Push')
Workout.create(name:'Legs')

Exercise.create(name:'Squats')
Exercise.create(name:'Leg-Press')
Exercise.create(name:'Bench-Press')
Exercise.create(name:'Pullups')
Exercise.create(name:'Pushups')
Exercise.create(name:'Skull-Crushers')

UserSchedule.create(user_id: User.find_by(name:'Brad').id,schedule_id: Schedule.find_by(name:'Week 1 Strength').id)
UserSchedule.create(user_id: User.find_by(name:'Chad').id,schedule_id: Schedule.find_by(name:'Week 1 Hypertrophy').id)
UserSchedule.create(user_id: User.find_by(name:'Chad').id,schedule_id: Schedule.find_by(name:'Week 2 Crossfit').id)

WorkoutSchedule.create(workout_id: Workout.find_by(name:'Pull').id, schedule_id: Schedule.find_by(name:'Week 1 Strength').id )
WorkoutSchedule.create(workout_id: Workout.find_by(name:'Push').id, schedule_id: Schedule.find_by(name:'Week 1 Hypertrophy').id)
WorkoutSchedule.create(workout_id: Workout.find_by(name:'Legs').id, schedule_id: Schedule.find_by(name:'Week 2 Cardio').id)
WorkoutSchedule.create(workout_id: Workout.find_by(name:'Pull').id, schedule_id: Schedule.find_by(name:'Week 2 Crossfit').id)

WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Pullups').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Bench-Press').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Pushups').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Squats').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Leg-Press').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Skull-Crushers').id)
