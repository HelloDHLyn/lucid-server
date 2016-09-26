class ReleasesController < ApplicationController
  before_action :auth

  # GET /releases
  def index
    @releases = Release.all

    render :json => @releases.to_json
  end

  # GET /releases/:package
  def show
    @releases = Release.where('applicaton_id' => Application.where('package' => params[:package]).pluck(:id))

    render :json => @releases.to_json
  end
end
