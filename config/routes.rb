Rails.application.routes.draw do

resources :restaurants do
  resources :reviews, only: [:new, :create]
end



#          Prefix Verb   URI Pattern                     Controller#Action
#     restaurants GET    /restaurants(.:format)          restaurants#index
#                 POST   /restaurants(.:format)          restaurants#create
#  new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#      restaurant GET    /restaurants/:id(.:format)      restaurants#show
#                 PATCH  /restaurants/:id(.:format)      restaurants#update
#                 PUT    /restaurants/:id(.:format)      restaurants#update
#                 DELETE /restaurants/:id(.:format)      restaurants#destroy
#         reviews GET    /reviews(.:format)              reviews#index
#                 POST   /reviews(.:format)              reviews#create
#      new_review GET    /reviews/new(.:format)          reviews#new
#     edit_review GET    /reviews/:id/edit(.:format)     reviews#edit
#          review GET    /reviews/:id(.:format)          reviews#show
#                 PATCH  /reviews/:id(.:format)          reviews#update
#                 PUT    /reviews/:id(.:format)          reviews#update
#                 DELETE /reviews/:id(.:format)          reviews#destroy

end
