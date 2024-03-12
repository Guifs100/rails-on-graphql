require 'sneakers'
require 'bunny'
require 'json'

class CreatePolicyProcessor
  def self.publisher(message, queue)
    ch = conn.create_channel
    queue = ch.queue('create_policy', durable: true)
    ch.default_exchange.publish(message, routing_key: queue.name)
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
