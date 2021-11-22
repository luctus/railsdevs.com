Rails.application.routes.draw do
  devise_for :users

  resource :home, only: :show
  resources :developers, except: :destroy

  scope controller: :static do
    get :about
    get :milestones
  end

  root to: "home#show"
end
