# frozen_string_literal: true

module Cloudpayments
  module Resources
    class Models
      # @api private
      #
      # @param client [Cloudpayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
