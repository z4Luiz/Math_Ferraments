Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "ferraments#conversor"
  post '/', to: 'ferraments#conversor', as: 'conversor'
  post '/conversor_ajax', to: 'ferraments#conversor_ajax', as: 'conversor_ajax'
  get '/geometria', to: 'ferraments#geometria', as: 'geometria'
  match '/*path', to: proc { [204, {}, ['']] }, via: :options
end
