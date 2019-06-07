# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => "/ckeditor"

  namespace :admin do
    root "dashboards#home"
    resources :categories
    resources :posts, except: %i[new create]
  end

  namespace :author do
    resources :posts, except: :destroy
  end
end
