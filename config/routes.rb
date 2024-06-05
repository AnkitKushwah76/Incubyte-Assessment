Rails.application.routes.draw do
  root "calculators#index"

  resources :calculators, only: [:index] do
    collection do
      post :data_calculate
    end
  end
end
