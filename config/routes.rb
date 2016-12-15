Rails.application.routes.draw do
  resources :events
  resources :organizations do
    collection do
      get 'get_last_n_events'
      get 'last_n_events_host_organization'
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
