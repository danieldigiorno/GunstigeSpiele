Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#search_steam'
  get 'search/:busqueda', to: 'search_steam#scrape_steam'
  get 'prices/:id/:title', to: 'search_steam#obtener_mejor_precio'
end
