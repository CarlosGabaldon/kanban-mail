KanbanMail::Application.routes.draw do
  get "items/index"

  resources :items do
    collection do 
      get :load
    end
  end
end
