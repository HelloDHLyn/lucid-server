class ApplicationController < ActionController::API
  include ActionController::Serialization

  protected
    def auth
      @access_user = User.find_by('access_token' => request.headers['X-Access-Token'])

      if !@access_user
        head 401 # Unauthorize
      end
    end
end
