Rails.application.routes.draw do
  delete "users/:id" => "users#destroy", :as => "destroy"
    resources :users, except: [:destroy] do
    collection do
      get 'recently'
    end
  end
end