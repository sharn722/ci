class DeployWorker
  include Sidekiq::Worker
  def perform
    system("sudo -u deploy ./wallet_deploy.sh")  
    # do something
  end
end