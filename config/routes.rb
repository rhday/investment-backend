Rails.application.routes.draw do

  #get "api/v2/login", to "sessions#create"

    namespace :api do 
      namespace :v2 do
        resources :users
        resources :accounts do
          resources :transactions
        end 
      end
      namespace :v1 do ## This tells the application where to look "app/controllers/api/v1"
        resources :accounts do
          resources :transactions #nesting the transaction resource within the accounts resource means that transactions can only be accessed through accounts
        end 
      end  
    end 
  
    #namespacing routes lets the browser know where to look for the controller within the backend of the application.
  
  end
