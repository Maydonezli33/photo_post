Rails.application.routes.draw do
  devise_for :users

  resources :posts

  root "mypages#show"
  get "mypage", to: "mypages#show", as: :mypage
end