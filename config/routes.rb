Rails.application.routes.draw do
  resources :livros
  root 'livros#index'
  get '/livros/new', to: 'livros#new', as: 'new_livro'
end
