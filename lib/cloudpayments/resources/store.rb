# frozen_string_literal: true

module Cloudpayments
  module Resources
    class Store
      # @return [Cloudpayments::Resources::Store::Orders]
      attr_reader :orders

      # Returns a map of status codes to quantities
      #
      # @overload list_inventory(request_options: {})
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Integer}]
      #
      # @see Cloudpayments::Models::StoreListInventoryParams
      def list_inventory(params = {})
        @client.request(
          method: :get,
          path: "store/inventory",
          model: Cloudpayments::Internal::Type::HashOf[Integer],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Cloudpayments::Client]
      def initialize(client:)
        @client = client
        @orders = Cloudpayments::Resources::Store::Orders.new(client: client)
      end
    end
  end
end
