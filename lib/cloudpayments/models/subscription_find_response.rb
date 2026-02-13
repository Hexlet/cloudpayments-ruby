# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Subscriptions#find
    class SubscriptionFindResponse < Cloudpayments::Internal::Type::BaseModel
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
      #   Данные ответа
      #
      #   @return [Array<Cloudpayments::Models::Subscription>, nil]
      optional :model,
               -> { Cloudpayments::Internal::Type::ArrayOf[Cloudpayments::Subscription] },
               api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [Array<Cloudpayments::Models::Subscription>] Данные ответа
    end
  end
end
