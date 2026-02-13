# typed: strong

module CloudpaymentsRuby
  module Models
    class SubscriptionCancelResponse < CloudpaymentsRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::Models::SubscriptionCancelResponse,
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

      # Пустой ответ API (только Success и Message)
      sig do
        params(success: T::Boolean, message: String).returns(T.attached_class)
      end
      def self.new(
        # Результат выполнения запроса
        success:,
        # Описание ошибки (при наличии)
        message: nil
      )
      end

      sig { override.returns({ success: T::Boolean, message: String }) }
      def to_hash
      end
    end
  end
end
