Bog::Application.routes.draw do

  root to: "bogs#index"
  # index displays all creatures

  # route to input new info
  get "/bog/new", to: "bogs#new"

  # route to create new creature
  post "/bogs", to: "bogs#create"

  # route to save new creature
  # post "bog/:id/new", to: "bogs#create"

  # route to edit creature
  get "/bog/:id/edit", to: "bogs#edit"


  # route to view single creature
  get "/bog/:id", to: "bogs#show"

  # route to save changes
  put "/bog/:id", to: "bogs#update"

  # route to delete creature
  delete "/bog/:id", to: "bogs#delete"

end