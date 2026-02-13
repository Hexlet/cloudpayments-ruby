# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Subscriptions#update
    class SubscriptionUpdateResponse < CloudpaymentsRuby::Internal::Type::BaseModel
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
      #   Модель подписки на рекуррентные платежи
      #
      #   @return [CloudpaymentsRuby::Models::Subscription, nil]
      optional :model, -> { CloudpaymentsRuby::Subscription }, api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [CloudpaymentsRuby::Models::Subscription] Модель подписки на рекуррентные платежи
    end
  end
end
