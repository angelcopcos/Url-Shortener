Rails.application.routes.draw do
  root "urls#index"

  post 'urls' => 'urls#create'

  get '/url/:id' => 'urls#show', as: :url_show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
