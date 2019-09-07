Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  get 'mypage/:id' => 'top#mypage'
  resources :users
  resources :users, only: :show do 
    resources :trainings
    
    resources :trainings, only: :show do 
      collection do
        get :menu
      end
    end
    
  end
end
