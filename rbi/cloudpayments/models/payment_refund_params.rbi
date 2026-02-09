# typed: strong

module Cloudpayments
  module Models
    class PaymentRefundParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PaymentRefundParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Сумма возврата
      sig { returns(Float) }
      attr_accessor :amount

      # ID транзакции оплаты
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
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Сумма возврата
        amount:,
        # ID транзакции оплаты
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
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
