Rails.application.routes.draw do
  root 'websites#new'

  resources :websites do 
    resources :links, shallow: true
  end

end 

#  Prefix Verb   URI Pattern                               Controller#Action
#             root GET    /                                         websites#new
#    website_links GET    /websites/:website_id/links(.:format)     links#index
#                  POST   /websites/:website_id/links(.:format)     links#create
# new_website_link GET    /websites/:website_id/links/new(.:format) links#new
#        edit_link GET    /links/:id/edit(.:format)                 links#edit
#             link GET    /links/:id(.:format)                      links#show
#                  PATCH  /links/:id(.:format)                      links#update
#                  PUT    /links/:id(.:format)                      links#update
#                  DELETE /links/:id(.:format)                      links#destroy
#         websites GET    /websites(.:format)                       websites#index
#                  POST   /websites(.:format)                       websites#create
#      new_website GET    /websites/new(.:format)                   websites#new
#     edit_website GET    /websites/:id/edit(.:format)              websites#edit
#          website GET    /websites/:id(.:format)                   websites#show
#                  PATCH  /websites/:id(.:format)                   websites#update
#                  PUT    /websites/:id(.:format)                   websites#update
#                  DELETE /websites/:id(.:format)                   websites#destroy