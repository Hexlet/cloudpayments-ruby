# typed: strong

module Cloudpayments
  module Models
    class PaymentPost3dsParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PaymentPost3dsParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Результат 3-D Secure аутентификации
      sig { returns(String) }
      attr_accessor :pa_res

      # ID транзакции (значение параметра MD)
      sig { returns(Integer) }
      attr_accessor :transaction_id

      sig do
        params(
          pa_res: String,
          transaction_id: Integer,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Результат 3-D Secure аутентификации
        pa_res:,
        # ID транзакции (значение параметра MD)
        transaction_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            pa_res: String,
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
