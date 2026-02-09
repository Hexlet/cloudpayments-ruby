# typed: strong

module Cloudpayments
  module Models
    class PetFindByTagsParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PetFindByTagsParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Tags to filter by
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      sig do
        params(
          tags: T::Array[String],
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Tags to filter by
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            tags: T::Array[String],
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
