# typed: strong

module Cloudpayments
  module Models
    class SubscriptionFindParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::SubscriptionFindParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Идентификатор пользователя
      sig { returns(String) }
      attr_accessor :account_id

      sig do
        params(
          account_id: String,
          request_options: Cloudpayments::RequestOptions::OrHash
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
          { account_id: String, request_options: Cloudpayments::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
