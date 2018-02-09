Rails.application.routes.draw do

  scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'application#home'
  end

  get 'getstarted/thankyou'

  get 'getstarted/basic' => redirect("https://basicplan.carrd.co/") # Recopie ca pour les deux autres plans
  get 'getstarted/basic_confirm', to: 'getstarted#basic_confirm'

  get 'getstarted/intermediate'=> redirect("https://intermediateplan.carrd.co/")
  get 'getstarted/intermediate_confirm', to: 'getstarted#intermediate_confirm'

  get 'getstarted/pro'=> redirect("https://proplan.carrd.co/")
  get 'getstarted/pro_confirm', to: 'getstarted#pro_confirm'

  get '/faq', to: 'pages#faq'
  get '/blog', to: 'pages#blog'
  get '/jobs', to: 'pages#jobs'
  get '/terms', to: 'pages#terms'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#home'
end
