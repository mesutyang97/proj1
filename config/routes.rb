Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  patch "/capture", to: "pokemons#capture", as: "capture"
  patch "/damage", to: "pokemons#damage", as: "damage"
  get "/toNewPokemon", to: "pokemons#new", as: "pageToNewPokemon"
  post "/createPokemon", to: "pokemons#create", as: "createPokemon"
  resources :trainers
end
