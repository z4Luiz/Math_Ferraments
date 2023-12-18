Rails.application.routes.draw do
  root to: "ferraments#conversor"

  post '/conversor', to: 'ferraments#conversor', as: 'conversor'
  post '/geometria', to: 'ferraments#geometria', as: 'geometria'
  get '/geometria', to: 'ferraments#geometria'

  match '/*path', to: proc { [204, {}, ['']] }, via: :options
end
