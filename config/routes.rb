ThumbBalance::Application.routes.draw do
  root to: "application#home"

  resources :transactions
end
