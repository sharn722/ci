class ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :edit, :update, :destroy]

  protect_from_forgery :except => [:release_request]

  # GET /releases
  # GET /releases.json
  def index
    @releases = Release.all
  end

  # GET /releases/1
  # GET /releases/1.json
  def show
  end

  def new

    `cd /c/Users/sharn722/Documents/work/wallet; cap production deploy` 
    hash = {:x => 1, :y => 2}
    hash.each{|k,v|}
    render :text => hash.to_s, :format => :json
  end

  def release_request
    #system("./wallet_deploy.sh") 
    DeployWorker.perform_async

    render :text => params.to_s
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_release
      @release = Release.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def release_params
      params.require(:release).permit(:app_id, :commit_msg)
    end
end
