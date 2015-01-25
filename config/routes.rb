Staffolution::Application.routes.draw do
  get "landings/index"
  root 'landings#index'
  
  resources :jobs

  resources :employers do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  resources :reps do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  resources :reviews

  resources :employees do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  resources :education_classes do
  #->Prelang (voting/acts_as_votable)
    member do
      get "vote"
    end
  end

  devise_for :users, controllers: {registrations: "users/registrations", sessions: "users/sessions", passwords: "users/passwords", omniauth_callbacks: "users/omniauth_callbacks"}, skip: [:sessions, :registrations]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #->Prelang (user_login:devise/stylized_paths)
  devise_scope :user do
    get    "login"   => "devise/sessions#new",         as: :new_user_session
    post   "login"   => "devise/sessions#create",      as: :user_session
    delete "signout" => "devise/sessions#destroy",     as: :destroy_user_session
    
    get    "signup"  => "devise/registrations#new",    as: :new_user_registration
    post   "signup"  => "devise/registrations#create", as: :user_registration
    put    "signup"  => "devise/registrations#update", as: :update_user_registration
    get    "account" => "devise/registrations#edit",   as: :edit_user_registration
  end

end
