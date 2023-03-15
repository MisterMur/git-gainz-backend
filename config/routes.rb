Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :muscles
      resources :exercises do
        resources :exercise_muscles
      end
      resources :workouts do
        resources :workout_schedules
        resources :workout_exercises
      end
      resources :user_workouts do
        member do
          get :muscle_sets_data
          get :muscle_reps_data
        end
      end
      resources :completed_workouts
      resources :circuits do
        resources :completed_circuits
      end
      resources :schedules
      resources :user_schedules
      resources :users
    end

    namespace :v1, defaults: { format: :json } do
      resource :login, controller: :sessions
    end
  end

  devise_for :users
end
