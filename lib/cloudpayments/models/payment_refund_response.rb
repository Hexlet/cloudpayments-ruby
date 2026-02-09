# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#refund
    class PaymentRefundResponse < Cloudpayments::Internal::Type::BaseModel
      # @!attribute success
      #   Результат выполнения запроса
      #
      #   @return [Boolean]
      required :success, Cloudpayments::Internal::Type::Boolean, api_name: :Success

      # @!attribute message
      #   Описание ошибки (при наличии)
      #
      #   @return [String, nil]
      optional :message, String, api_name: :Message

      # @!attribute model
      #   Модель для ответа refund
      #
      #   @return [Cloudpayments::Models::PaymentRefundResponse::Model, nil]
      optional :model, -> { Cloudpayments::Models::PaymentRefundResponse::Model }, api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [Cloudpayments::Models::PaymentRefundResponse::Model] Модель для ответа refund

      # @see Cloudpayments::Models::PaymentRefundResponse#model
      class Model < Cloudpayments::Internal::Type::BaseModel
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
