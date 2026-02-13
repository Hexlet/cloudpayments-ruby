# typed: strong

module CloudpaymentsRuby
  module Models
    class PaymentConfirmParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::PaymentConfirmParams,
            CloudpaymentsRuby::Internal::AnyHash
          )
        end

      # Сумма подтверждения
      sig { returns(Float) }
      attr_accessor :amount

      # ID транзакции
      sig { returns(Integer) }
      attr_accessor :transaction_id

      # Дополнительные данные (JSON)
      sig { returns(T.nilable(T.anything)) }
      attr_reader :json_data

      sig { params(json_data: T.anything).void }
      attr_writer :json_data

      sig do
        params(
          amount: Float,
          transaction_id: Integer,
          json_data: T.anything,
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Сумма подтверждения
        amount:,
        # ID транзакции
        transaction_id:,
        # Дополнительные данные (JSON)
        json_data: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            transaction_id: Integer,
            json_data: T.anything,
            request_options: CloudpaymentsRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
