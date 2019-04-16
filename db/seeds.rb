# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserWorkout.destroy_all
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

Schedule.create(name:'Bulking')
Schedule.create(name:'Cutting')
Schedule.create(name:'Crossfit')
Schedule.create(name:'HIIT')


Workout.create(name:'Pull')
Workout.create(name:'Push')
Workout.create(name:'Legs')
Workout.create(name:'Arms')
Workout.create(name:'Legs and Shoulders')

Exercise.create(name:'Squats',muscle:'Quads')
Exercise.create(name:'Goblet-Squats',muscle:'Quads')

Exercise.create(name:'Leg-Press',muscle:'Quads')
Exercise.create(name:'Bench-Press',muscle:'Chest')
Exercise.create(name:'Machine Fly',muscle:'Chest')
Exercise.create(name:'Pushups',muscle:'Chest')
Exercise.create(name:'Pullups',muscle:'Back')
Exercise.create(name:'Cable Rows',muscle:'Back')
Exercise.create(name:'Bent-Over DB Rows',muscle:'Back')


Exercise.create(name:'Skull-Crushers',muscle:'Triceps')
Exercise.create(name:'Skull-Crushers',muscle:'Triceps')
Exercise.create(name:'Spider Curls',muscle:'Biceps')
Exercise.create(name:'EZ-Barbell Preacher Curls',muscle:'Biceps')
Exercise.create(name:'Cable Curls',muscle:'Biceps')
Exercise.create(name:'Incline DB Curls',muscle:'Biceps')


Exercise.create(name:'Standing Calve Raises',muscle:'Calves')
Exercise.create(name:'Seated Calve Raises',muscle:'Calves')



UserSchedule.create(user_id: User.find_by(name:'Brad').id,schedule_id: Schedule.find_by(name:'Bulking').id)
UserSchedule.create(user_id: User.find_by(name:'Brad').id,schedule_id: Schedule.find_by(name:'Cutting').id)
UserSchedule.create(user_id: User.find_by(name:'Chad').id,schedule_id: Schedule.find_by(name:'Crossfit').id)

WorkoutSchedule.create(workout_id: Workout.find_by(name:'Pull').id, schedule_id: Schedule.find_by(name:'Bulking').id )
WorkoutSchedule.create(workout_id: Workout.find_by(name:'Push').id, schedule_id: Schedule.find_by(name:'Cutting').id)
WorkoutSchedule.create(workout_id: Workout.find_by(name:'Legs').id, schedule_id: Schedule.find_by(name:'Crossfit').id)
WorkoutSchedule.create(workout_id: Workout.find_by(name:'Pull').id, schedule_id: Schedule.find_by(name:'HIIT').id)

WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Pullups').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Bench-Press').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Pushups').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Squats').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Machine Fly').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Cable Rows').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Bent-Over DB Rows').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Spider Curls').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'EZ-Barbell Preacher Curls').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Cable Curls').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Pull').id, exercise_id: Exercise.find_by(name:'Incline DB Curls').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Leg-Press').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Goblet-Squats').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Push').id, exercise_id: Exercise.find_by(name:'Skull-Crushers').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Standing Calve Raises').id)
WorkoutExercise.create(workout_id: Workout.find_by(name:'Legs').id, exercise_id: Exercise.find_by(name:'Seated Calve Raises').id)
