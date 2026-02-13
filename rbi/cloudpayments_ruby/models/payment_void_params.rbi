# typed: strong

module CloudpaymentsRuby
  module Models
    class PaymentVoidParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::PaymentVoidParams,
            CloudpaymentsRuby::Internal::AnyHash
          )
        end

      # ID транзакции
      sig { returns(Integer) }
      attr_accessor :transaction_id

      sig do
        params(
          transaction_id: Integer,
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
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
            request_options: CloudpaymentsRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
