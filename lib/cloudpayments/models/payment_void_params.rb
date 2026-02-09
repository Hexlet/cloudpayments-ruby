# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#void
    class PaymentVoidParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute transaction_id
      #   ID транзакции
      #
      #   @return [Integer]
      required :transaction_id, Integer, api_name: :TransactionId

      # @!method initialize(transaction_id:, request_options: {})
      #   @param transaction_id [Integer] ID транзакции
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
