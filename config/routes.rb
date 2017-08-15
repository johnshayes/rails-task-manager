Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
end

# This one line generates:
#    Prefix Verb   URI Pattern               Controller#Action
#     todos GET    /todos(.:format)          todos#index
#           POST   /todos(.:format)          todos#create
#  new_todo GET    /todos/new(.:format)      todos#new
# edit_todo GET    /todos/:id/edit(.:format) todos#edit
#      todo GET    /todos/:id(.:format)      todos#show
#           PATCH  /todos/:id(.:format)      todos#update
#           PUT    /todos/:id(.:format)      todos#update
#           DELETE /todos/:id(.:format)      todos#destroy
