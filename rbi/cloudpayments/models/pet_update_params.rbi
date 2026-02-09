# typed: strong

module Cloudpayments
  module Models
    class PetUpdateParams < Cloudpayments::Models::Pet
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PetUpdateParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Cloudpayments::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig do
        override.returns({ request_options: Cloudpayments::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
