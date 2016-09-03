Rails.application.routes.draw do
  scope '/api' do
    scope '/v1' do
      scope '/applications' do
        get '/' => 'applications#index'
      end
    end
  end
end
