# frozen_string_literal: true

Rails.application.routes.draw do
  mount Ckeditor::Engine => "/ckeditor"

  namespace :admin do
    root "dashboards#home"
    resources :categories
  end

  namespace :author do
    resources :posts, except: :destroy
  end
end
