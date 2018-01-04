Rails.application.routes.draw do
  resources :murmurs do
    collection do
      post :confirm
    end
  end
      
end
