Rails.application.routes.draw do
   #home page!
   root "user#index"
   # to create a user
   post 'save_it', to: 'user#create' 

   get 'customer_index/:id', to: 'customer#index'
   
   get 'new_page', to: 'customer#new'

   post 'submit_form', to:'customer#submit'
end
