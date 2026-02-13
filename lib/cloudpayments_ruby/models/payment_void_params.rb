# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Payments#void
    class PaymentVoidParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      # @!attribute transaction_id
      #   ID транзакции
      #
      #   @return [Integer]
      required :transaction_id, Integer, api_name: :TransactionId

      # @!method initialize(transaction_id:, request_options: {})
      #   @param transaction_id [Integer] ID транзакции
      #
      #   @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
