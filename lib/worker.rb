require 'sneakers'

class Worker
  include Sneakers::Worker
  from_queue :pending_tasks

  def work(payload)
    logger.info payload

    ack!
  end
end
