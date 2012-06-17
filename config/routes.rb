BurgerQuest::Application.routes.draw do
  
  root :to => "home#home"
  get "home/about", :as => :about 
  get "home/top", :as => :top_burger
  get "home/advertise", :as => :advertise

  devise_for :users

  resources :reviews
  resources :burgers
  resources :restaurants do
    resources :locations
  end

end
