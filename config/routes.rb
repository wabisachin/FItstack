Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index'
  get 'mypage/:id' => 'top#mypage'
  resources :users
  
  resources :users, only: :show do 
    resources :menus
    resources :trainings do 
      collection do
        get :top
      end
    end
  end
  
end
