# frozen_string_literal: true

module Cloudpayments
  module Models
    module Store
      # @see Cloudpayments::Resources::Store::Orders#create
      class OrderCreateParams < Cloudpayments::Models::Order
        extend Cloudpayments::Internal::Type::RequestParameters::Converter
        include Cloudpayments::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
