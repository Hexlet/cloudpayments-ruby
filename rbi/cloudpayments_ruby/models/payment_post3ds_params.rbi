# typed: strong

module CloudpaymentsRuby
  module Models
    class PaymentPost3dsParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::PaymentPost3dsParams,
            CloudpaymentsRuby::Internal::AnyHash
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
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
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
            request_options: CloudpaymentsRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
