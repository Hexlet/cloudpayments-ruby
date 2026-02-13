# typed: strong

module Cloudpayments
  module Models
    class SubscriptionCreateResponse < Cloudpayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::Models::SubscriptionCreateResponse,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Результат выполнения запроса
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Описание ошибки (при наличии)
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Модель подписки на рекуррентные платежи
      sig { returns(T.nilable(Cloudpayments::Subscription)) }
      attr_reader :model

      sig { params(model: Cloudpayments::Subscription::OrHash).void }
      attr_writer :model

      # Базовый ответ API
      sig do
        params(
          success: T::Boolean,
          message: String,
          model: Cloudpayments::Subscription::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Результат выполнения запроса
        success:,
        # Описание ошибки (при наличии)
        message: nil,
        # Модель подписки на рекуррентные платежи
        model: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            message: String,
            model: Cloudpayments::Subscription
          }
        )
      end
      def to_hash
      end
    end
  end
end
