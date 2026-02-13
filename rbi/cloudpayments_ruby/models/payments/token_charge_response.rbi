# typed: strong

module CloudpaymentsRuby
  module Models
    module Payments
      class TokenChargeResponse < CloudpaymentsRuby::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              CloudpaymentsRuby::Models::Payments::TokenChargeResponse,
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

        # Модель транзакции в ответе API
        sig { returns(T.nilable(CloudpaymentsRuby::Transaction)) }
        attr_reader :model

        sig { params(model: CloudpaymentsRuby::Transaction::OrHash).void }
        attr_writer :model

        # Базовый ответ API
        sig do
          params(
            success: T::Boolean,
            message: String,
            model: CloudpaymentsRuby::Transaction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Результат выполнения запроса
          success:,
          # Описание ошибки (при наличии)
          message: nil,
          # Модель транзакции в ответе API
          model: nil
        )
        end

        sig do
          override.returns(
            {
              success: T::Boolean,
              message: String,
              model: CloudpaymentsRuby::Transaction
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
