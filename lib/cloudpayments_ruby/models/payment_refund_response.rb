# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Payments#refund
    class PaymentRefundResponse < CloudpaymentsRuby::Internal::Type::BaseModel
      # @!attribute success
      #   Результат выполнения запроса
      #
      #   @return [Boolean]
      required :success, CloudpaymentsRuby::Internal::Type::Boolean, api_name: :Success

      # @!attribute message
      #   Описание ошибки (при наличии)
      #
      #   @return [String, nil]
      optional :message, String, api_name: :Message

      # @!attribute model
      #   Модель для ответа refund
      #
      #   @return [CloudpaymentsRuby::Models::PaymentRefundResponse::Model, nil]
      optional :model, -> { CloudpaymentsRuby::Models::PaymentRefundResponse::Model }, api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [CloudpaymentsRuby::Models::PaymentRefundResponse::Model] Модель для ответа refund

      # @see CloudpaymentsRuby::Models::PaymentRefundResponse#model
      class Model < CloudpaymentsRuby::Internal::Type::BaseModel
        # @!attribute transaction_id
        #   ID транзакции возврата
        #
        #   @return [Integer]
        required :transaction_id, Integer, api_name: :TransactionId

        # @!method initialize(transaction_id:)
        #   Модель для ответа refund
        #
        #   @param transaction_id [Integer] ID транзакции возврата
      end
    end
  end
end
