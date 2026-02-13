# typed: strong

module CloudpaymentsRuby
  module Models
    class PaymentRefundResponse < CloudpaymentsRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::Models::PaymentRefundResponse,
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

      # Модель для ответа refund
      sig do
        returns(
          T.nilable(CloudpaymentsRuby::Models::PaymentRefundResponse::Model)
        )
      end
      attr_reader :model

      sig do
        params(
          model: CloudpaymentsRuby::Models::PaymentRefundResponse::Model::OrHash
        ).void
      end
      attr_writer :model

      # Базовый ответ API
      sig do
        params(
          success: T::Boolean,
          message: String,
          model: CloudpaymentsRuby::Models::PaymentRefundResponse::Model::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Результат выполнения запроса
        success:,
        # Описание ошибки (при наличии)
        message: nil,
        # Модель для ответа refund
        model: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            message: String,
            model: CloudpaymentsRuby::Models::PaymentRefundResponse::Model
          }
        )
      end
      def to_hash
      end

      class Model < CloudpaymentsRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              CloudpaymentsRuby::Models::PaymentRefundResponse::Model,
              CloudpaymentsRuby::Internal::AnyHash
            )
          end

        # ID транзакции возврата
        sig { returns(Integer) }
        attr_accessor :transaction_id

        # Модель для ответа refund
        sig { params(transaction_id: Integer).returns(T.attached_class) }
        def self.new(
          # ID транзакции возврата
          transaction_id:
        )
        end

        sig { override.returns({ transaction_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
