Rails.application.routes.draw do
  root "posts#index"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/posts/:id/tags", to: "posts#show_tags"
  post "/posts/:id/tags", to: "posts#link_tag"
  #get "/posts/:id", to: "posts#show"
  #patch "/posts/:id", to: "posts#update"
  post "/comments/:id", to: "comments#link_comments"
  put "/posts/:id/tags", to: "posts#replace_tags"
  delete "/posts/:id/tags", to: "posts#unlink_tag"
  resources :posts, except: [:new, :edit] do
    resources :comments, except: [:new, :edit]
  end
  resources :tags, except: [:new, :edit]
end
