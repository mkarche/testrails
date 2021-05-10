Rails.application.routes.draw do
  get '/' => "pages#home"
  get '/contact' => "pages#contact"
  get '/team' => "pages#team"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/products" => "products#index"
  get "/products/s/:filter" => "products#index"
  get "/products/:id" => "products#show"

end
