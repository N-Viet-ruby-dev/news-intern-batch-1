# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => "/ckeditor"

  namespace :admin do
    root "dashboards#home"
    resources :categories
    resources :users
    resources :posts, except: %i[new create edit]
  end

  namespace :author do
    resources :posts, except: :destroy
  end

  root "static_pages#index"
  resources :categories
end
