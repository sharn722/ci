class DeployWorker
  include Sidekiq::Worker
  def perform
    `./wallet_deploy.sh`  
    # do something
  end
end