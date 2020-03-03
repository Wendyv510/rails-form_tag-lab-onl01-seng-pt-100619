Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: :index
  get '/students/:id', to: 'students#show', as: 'student'
  
  resources :students, only: [:index, :new] 
  get '/students/new', to: 'students#new', as: 'new_student' 

  resources :students, only: [:index, :new, :create]
  get '/students/create', to: 'students#create', as: 'new_student' 
end
