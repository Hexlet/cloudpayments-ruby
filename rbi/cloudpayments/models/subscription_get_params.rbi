# typed: strong

module Cloudpayments
  module Models
    class SubscriptionGetParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::SubscriptionGetParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Идентификатор подписки
      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: Cloudpayments::RequestOptions::OrHash
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
          { id: String, request_options: Cloudpayments::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
