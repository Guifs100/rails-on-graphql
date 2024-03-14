require 'sneakers'
require 'bunny'
require 'json'

class CreatePolicyPublisher
  def self.publish(message, queue_name)
    ch = conn.create_channel
    queue = ch.queue(queue_name, durable: true)
    ch.default_exchange.publish(message.to_json, routing_key: queue.name)
    ch.close
  end

  def self.conn
    @conn ||= Bunny.new(
      # username: 'user',
      # password: 'password',
      hostname: 'rabbitmq'
    ).tap(&:start)
  end
end
