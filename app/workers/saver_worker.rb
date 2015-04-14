class SaverWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'tasker'
  sidekiq_options backtrace: true
  sidekiq_options unique: true
    
  def perform(id)
    incident = Incident.find(id)
    incident.save
  end

end