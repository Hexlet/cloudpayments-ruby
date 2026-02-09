# typed: strong

module Cloudpayments
  module Models
    class PetUploadImageParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PetUploadImageParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      sig { returns(Cloudpayments::Internal::FileInput) }
      attr_accessor :image

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig do
        params(
          image: Cloudpayments::Internal::FileInput,
          additional_metadata: String,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        image:,
        # Additional Metadata
        additional_metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            image: Cloudpayments::Internal::FileInput,
            additional_metadata: String,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
