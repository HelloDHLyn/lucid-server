Rails.application.routes.draw do
  resources :releases
  scope '/api' do
    scope '/v1' do
      scope '/applications' do
        get '/' => 'applications#index'
      end

      scope '/releases' do
        get '/' => 'releases#index'
      end
    end
  end
end
