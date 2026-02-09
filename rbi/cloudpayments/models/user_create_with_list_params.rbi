# typed: strong

module Cloudpayments
  module Models
    class UserCreateWithListParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::UserCreateWithListParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Cloudpayments::User])) }
      attr_reader :items

      sig { params(items: T::Array[Cloudpayments::User::OrHash]).void }
      attr_writer :items

      sig do
        params(
          items: T::Array[Cloudpayments::User::OrHash],
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(items: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            items: T::Array[Cloudpayments::User],
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
