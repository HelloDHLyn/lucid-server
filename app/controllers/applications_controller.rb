class ApplicationsController < ApplicationController
  before_action :auth

  # GET /applications
  def index
    @applications = Application.all

    render :json => @applications.to_json
  end

  # GET /applications/1
  def show
    @applications = Application.all

    render :json => @applications.to_json
  end
end
