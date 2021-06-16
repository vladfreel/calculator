# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :calculations
  post 'calculations/sum_nums', to: 'calculations#sum_nums'
  post 'calculations/difference', to: 'calculations#difference'
  post 'calculations/multiplication', to: 'calculations#multiplication'
  post 'calculations/division', to: 'calculations#division'
end
