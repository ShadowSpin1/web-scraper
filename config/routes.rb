Rails.application.routes.draw do
  resources :listings do
    match '/scrape', to: 'listings#scrape', via: :post, on: :collection
  end
  root to: 'listings#index'
end
