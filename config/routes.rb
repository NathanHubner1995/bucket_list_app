Rails.application.routes.draw do
  root 'lists#index'
  resources :lists do
    resources :destinations
  end

  scope 'destinations/:Destination_id', as: 'Destination' do
    resources :activities
  end
end
