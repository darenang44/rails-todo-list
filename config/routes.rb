Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
  root 'tasks#index'

#   Prefix Verb   URI Pattern               Controller#Action

# new_user_session         GET    /users/sign_in(.:format)       devise/sessions#new
#     user_session         POST   /users/sign_in(.:format)       devise/sessions#create
# destroy_user_session     DELETE /users/sign_out(.:format)      devise/sessions#destroy
#    user_password         POST   /users/password(.:format)      devise/passwords#create
# new_user_password        GET    /users/password/new(.:format)  devise/passwords#new
# edit_user_password       GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
# user_registration        POST   /users(.:format)               devise/registrations#create
# new_user_registration    GET    /users/sign_up(.:format)       devise/registrations#new
# edit_user_registration   GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy

#     tasks GET    /tasks(.:format)          tasks#index
#           POST   /tasks(.:format)          tasks#create
#  new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#      task GET    /tasks/:id(.:format)      tasks#show
#           PATCH  /tasks/:id(.:format)      tasks#update
#           PUT    /tasks/:id(.:format)      tasks#update
#           DELETE /tasks/:id(.:format)      tasks#destroy
#       root GET    /                         tasks#index
end
