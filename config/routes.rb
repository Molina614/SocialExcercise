# Edited 7/20/2019 by Kori Kuzma: Added resourcers for users, groups, members
Rails.application.routes.draw do
  resources :posts, :standard_posts, :group_posts
  resources :groups, :members, :comments, :workouts, :emoji_rating, :exercises, :cardios, :liftings
  root 'users#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
