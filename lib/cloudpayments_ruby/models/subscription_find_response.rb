# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Subscriptions#find
    class SubscriptionFindResponse < CloudpaymentsRuby::Internal::Type::BaseModel
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
      #   Данные ответа
      #
      #   @return [Array<CloudpaymentsRuby::Models::Subscription>, nil]
      optional :model,
               -> { CloudpaymentsRuby::Internal::Type::ArrayOf[CloudpaymentsRuby::Subscription] },
               api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [Array<CloudpaymentsRuby::Models::Subscription>] Данные ответа
    end
  end
end
