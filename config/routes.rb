Rails.application.routes.draw do

    namespace :api do ## This tells the application where to look "app/controllers/api"
      namespace :v1 do ## This tells the application where to look "app/controllers/api/v1"
        resources :accounts do
          resources :transactions #nesting the transaction resource within the accounts resource means that transactions can only be accessed through accounts
        end 
      end  
    end 
  
    #namespacing routes lets the browser know where to look for the controller within the backend of the application.
  
  end
