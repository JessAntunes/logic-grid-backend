Rails.application.routes.draw do


  resources :games do
    resources :highscores
  end

  post '/games/:id/highscores', to: 'highscores#index', as: 'highscore'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
