Rails.application.routes.draw do
  resources :releases
  scope '/api' do
    scope '/v1' do
      scope '/applications' do
        get '/' => 'applications#index'
      end

      scope '/releases' do
        get '/:package' => 'releases#show', :constraints => { :package => /[^\/]+/ }
        get '/' => 'releases#index'
      end

      scope '/users' do
        post '/' => 'users#login'
      end
    end
  end
end
