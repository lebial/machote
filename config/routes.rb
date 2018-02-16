Rails.application.routes.draw do
  resources :promotions, except: :show
  root 'promotions#index'
end
