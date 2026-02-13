# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    module Payments
      # @see CloudpaymentsRuby::Resources::Payments::Tokens#auth
      class TokenAuthResponse < CloudpaymentsRuby::Internal::Type::BaseModel
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
        #   Модель транзакции в ответе API
        #
        #   @return [CloudpaymentsRuby::Models::Transaction, nil]
        optional :model, -> { CloudpaymentsRuby::Transaction }, api_name: :Model

        # @!method initialize(success:, message: nil, model: nil)
        #   Базовый ответ API
        #
        #   @param success [Boolean] Результат выполнения запроса
        #
        #   @param message [String] Описание ошибки (при наличии)
        #
        #   @param model [CloudpaymentsRuby::Models::Transaction] Модель транзакции в ответе API
      end
    end
  end
end
