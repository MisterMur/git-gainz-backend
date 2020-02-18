Rails.application.routes.draw do
	namespace :api do
		namespace :v1 do
			resources :exercise_muscles
		end
	end
  namespace :api do
    namespace :v1 do
      resources :muscles
    end
  end
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :user_workouts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :user_schedules
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  namespace :api do
    namespace :v1 do
      resources :workout_schedules
    end
  end
  namespace :api do
    namespace :v1 do
      resources :schedules
    end
  end
  namespace :api do
    namespace :v1 do
      resources :workout_exercises
    end
  end
  namespace :api do
    namespace :v1 do
      resources :workouts
    end
  end
  namespace :api do
    namespace :v1 do
      resources :exercises
    end
  end
  namespace :api do
    namespace :v1 do
      resources :circuits
    end
  end

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resource :login, controller: :sessions
      # resource :login, only: [:create], controller: :sessions

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
