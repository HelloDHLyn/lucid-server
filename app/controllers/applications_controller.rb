class ApplicationsController < ApplicationController
  before_action :auth

  # GET /applications
  def index
    @applications = Application.all

    render json: @applications
  end

  # GET /applications/1
  def show
    @applications = Application.all

    render json: @application
  end

  private
    def auth
      user = User.find_by('access_token' => request.headers['X-Access-Token'])

      if !user
        head 401 # Unauthorize
      end
    end

    # Only allow a trusted parameter "white list" through.
    def application_params
      params.require(:application).permit(:name, :package, :platform)
    end
end
