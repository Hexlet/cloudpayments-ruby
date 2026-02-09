# typed: strong

module Cloudpayments
  module Models
    class PaymentVoidParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PaymentVoidParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # ID транзакции
      sig { returns(Integer) }
      attr_accessor :transaction_id

      sig do
        params(
          transaction_id: Integer,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID транзакции
        transaction_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            transaction_id: Integer,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
