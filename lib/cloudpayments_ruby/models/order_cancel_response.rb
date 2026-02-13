# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Orders#cancel
    class OrderCancelResponse < CloudpaymentsRuby::Internal::Type::BaseModel
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

      # @!method initialize(success:, message: nil)
      #   Пустой ответ API (только Success и Message)
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
    end
  end
end
