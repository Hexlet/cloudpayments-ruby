# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Payments#confirm
    class PaymentConfirmParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      # @!attribute amount
      #   Сумма подтверждения
      #
      #   @return [Float]
      required :amount, Float, api_name: :Amount

      # @!attribute transaction_id
      #   ID транзакции
      #
      #   @return [Integer]
      required :transaction_id, Integer, api_name: :TransactionId

      # @!attribute json_data
      #   Дополнительные данные (JSON)
      #
      #   @return [Object, nil]
      optional :json_data, CloudpaymentsRuby::Internal::Type::Unknown, api_name: :JsonData

      # @!method initialize(amount:, transaction_id:, json_data: nil, request_options: {})
      #   @param amount [Float] Сумма подтверждения
      #
      #   @param transaction_id [Integer] ID транзакции
      #
      #   @param json_data [Object] Дополнительные данные (JSON)
      #
      #   @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
