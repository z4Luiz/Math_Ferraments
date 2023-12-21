Rails.application.routes.draw do
  root to: 'ferraments#home'
  
  get '/conversor', to: 'ferraments#conversor'
  post '/conversor', to: 'ferraments#conversor'
  post '/geometria', to: 'ferraments#geometria', as: 'geometria'
  post '/equacao', to: 'ferraments#equacao', as: 'equacao'
  get '/geometria', to: 'ferraments#geometria'
  get '/equacao', to: 'ferraments#equacao'
  match '/*path', to: proc { [204, {}, ['']] }, via: :options
end

