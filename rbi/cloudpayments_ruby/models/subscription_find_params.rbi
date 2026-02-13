# typed: strong

module CloudpaymentsRuby
  module Models
    class SubscriptionFindParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::SubscriptionFindParams,
            CloudpaymentsRuby::Internal::AnyHash
          )
        end

      # Идентификатор пользователя
      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          account_id: String,
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Идентификатор пользователя
        account_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            request_options: CloudpaymentsRuby::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
