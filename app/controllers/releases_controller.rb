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

  # POST /releases
  def create
    @release = Release.new(release_params)

    if @release.save
      render json: @release, status: :created, location: @release
    else
      render json: @release.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /releases/1
  def update
    if @release.update(release_params)
      render json: @release
    else
      render json: @release.errors, status: :unprocessable_entity
    end
  end

  # DELETE /releases/1
  def destroy
    @release.destroy
  end

  private
    def auth
      user = User.find_by('access_token' => request.headers['X-Access-Token'])

      if !user
        head :forbidden 
      end
    end

    # Only allow a trusted parameter "white list" through.
    def release_params
      params.require(:release).permit(:is_latest, :is_release, :version_code, :version_name, :path, :applicaton_id)
    end
end
