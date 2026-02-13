# typed: strong

module CloudpaymentsRuby
  module Models
    class SubscriptionCancelParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::SubscriptionCancelParams,
            CloudpaymentsRuby::Internal::AnyHash
          )
        end

      # Идентификатор подписки
      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Идентификатор подписки
        id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { id: String, request_options: CloudpaymentsRuby::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
