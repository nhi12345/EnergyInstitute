Rails.application.routes.draw do
  scope :api do
    scope :auth do 
      post 'sign_in', to: 'auth#sign_in'
      post 'sign_up', to: 'auth#sign_up'
    end 
    scope :enterprises do
      get '', to: 'enterprises#show'
    end
  end
end
