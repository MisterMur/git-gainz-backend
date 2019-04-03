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

Workout.create(name:'Pull')
Workout.create(name:'Push')
Workout.create(name:'Legs')

Exercise.create(name:'Squats')
Exercise.create(name:'Leg-Press')
Exercise.create(name:'Bench-Press')
Exercise.create(name:'Pullups')
Exercise.create(name:'Pushups')
Exercise.create(name:'Skull-Crushers')
