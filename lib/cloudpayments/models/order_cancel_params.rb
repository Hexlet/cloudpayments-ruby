# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Orders#cancel
    class OrderCancelParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute id
      #   Идентификатор заказа
      #
      #   @return [String]
      required :id, String, api_name: :Id

      # @!method initialize(id:, request_options: {})
      #   @param id [String] Идентификатор заказа
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
