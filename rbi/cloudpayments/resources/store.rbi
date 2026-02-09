# typed: strong

module Cloudpayments
  module Resources
    class Store
      sig { returns(Cloudpayments::Resources::Store::Orders) }
      attr_reader :orders

      # Returns a map of status codes to quantities
      sig do
        params(request_options: Cloudpayments::RequestOptions::OrHash).returns(
          T::Hash[Symbol, Integer]
        )
      end
      def list_inventory(request_options: {})
      end

      # @api private
      sig { params(client: Cloudpayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
