# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#post3ds
    class PaymentPost3dsResponse < Cloudpayments::Internal::Type::BaseModel
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
      #   Модель транзакции в ответе API
      #
      #   @return [Cloudpayments::Models::Transaction, nil]
      optional :model, -> { Cloudpayments::Transaction }, api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [Cloudpayments::Models::Transaction] Модель транзакции в ответе API
    end
  end
end
