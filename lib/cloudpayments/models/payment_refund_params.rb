# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#refund
    class PaymentRefundParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute amount
      #   Сумма возврата
      #
      #   @return [Float]
      required :amount, Float, api_name: :Amount

      # @!attribute transaction_id
      #   ID транзакции оплаты
      #
      #   @return [Integer]
      required :transaction_id, Integer, api_name: :TransactionId

      # @!attribute json_data
      #   Дополнительные данные (JSON)
      #
      #   @return [Object, nil]
      optional :json_data, Cloudpayments::Internal::Type::Unknown, api_name: :JsonData

      # @!method initialize(amount:, transaction_id:, json_data: nil, request_options: {})
      #   @param amount [Float] Сумма возврата
      #
      #   @param transaction_id [Integer] ID транзакции оплаты
      #
      #   @param json_data [Object] Дополнительные данные (JSON)
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
