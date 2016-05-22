class DeployWorker
  include Sidekiq::Worker
  def perform
    system("./wallet_deploy.sh")  
    # do something
  end
end