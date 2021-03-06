Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'manga#index'
  get '/subscribe/manga/:id', to: 'manga#subscribe', as: 'subscribe'
  get '/following/manga/:id', to: 'usermailer#new_manga_noti', as: 'mangaAlert'
end
