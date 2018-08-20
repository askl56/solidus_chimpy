require 'sidekiq'
module Spree::Chimpy
  module Workers
    class Sidekiq
      delegate :log, to: Spree::Chimpy
      if defined?(::Sidekiq)
        include ::Sidekiq::Worker
        sidekiq_options queue: :mailchimp, retry: 3,
          backtrace: true
      end

      def perform(payload)
        Spree::Chimpy.perform(payload.with_indifferent_access)
      end

    end
  end
end
