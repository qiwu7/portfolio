Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  resources :comments
  devise_for :users,
             path: "",
             path_names: {
               sign_in: "login",
               sign_out: "logout",
               sign_up: "register",
             }
  resources :projects, except: [:show] do
    put :sort, on: :collection
  end
  get "project/:id", to: "projects#show", as: "project_show"

  get "about-me", to: "pages#about"
  get "contact", to: "pages#contact"

  resources :blogs do
    member do
      post :toggle_status
    end
  end

  mount ActionCable.server => "/cable"

  root to: "pages#home"
end
