Rails.application.routes.draw do

  scope '/admin',module: 'admin' do
    resources :preferences,only:[:index]
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end
