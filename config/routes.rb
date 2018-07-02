Rails.application.routes.draw do
  resources :citations

  root to: redirect('/citations')
end
