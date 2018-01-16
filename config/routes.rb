Rails.application.routes.draw do
  get 'tops/index'

  resources :murmurs do
    collection do
      post :confirm
    end
  end
      
end
