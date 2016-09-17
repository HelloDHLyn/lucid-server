class ReleasesController < ApplicationController
  before_action :auth

  # GET /releases
  def index
    @releases = Release.all

    render json: @releases
  end

  # GET /releases/:package
  def show
    @releases = Release.where('applicaton_id' => Application.where('package' => params[:package]).pluck(:id))

    render json: @releases
  end

  private
    # Only allow a trusted parameter "white list" through.
    def release_params
      params.require(:release).permit(:is_latest, :is_release, :version_code, :version_name, :path, :applicaton_id)
    end
end
