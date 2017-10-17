Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'news/:type/:channel', to: "news#index"
      get 'hnews/:type/:channel', to: "news#hnews"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
