class DeployWorker
  include Sidekiq::Worker
  def perform
    `bash ./wallet_deploy.sh`  
    # do something
  end
end
