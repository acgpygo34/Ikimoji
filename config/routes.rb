Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'home/top' => 'home#top'
  get 'inquiry' => 'inquiry#index'
  get 'inquiry/index' => 'inquiry#index'
  get 'inquiry/new' => 'inquiry#new'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
