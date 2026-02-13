# typed: strong

module CloudpaymentsRuby
  module Models
    class SubscriptionFindResponse < CloudpaymentsRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::Models::SubscriptionFindResponse,
            CloudpaymentsRuby::Internal::AnyHash
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

      # Данные ответа
      sig { returns(T.nilable(T::Array[CloudpaymentsRuby::Subscription])) }
      attr_reader :model

      sig do
        params(model: T::Array[CloudpaymentsRuby::Subscription::OrHash]).void
      end
      attr_writer :model

      # Базовый ответ API
      sig do
        params(
          success: T::Boolean,
          message: String,
          model: T::Array[CloudpaymentsRuby::Subscription::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Результат выполнения запроса
        success:,
        # Описание ошибки (при наличии)
        message: nil,
        # Данные ответа
        model: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            message: String,
            model: T::Array[CloudpaymentsRuby::Subscription]
          }
        )
      end
      def to_hash
      end
    end
  end
end
