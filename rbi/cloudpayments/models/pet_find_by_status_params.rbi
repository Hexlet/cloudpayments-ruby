# typed: strong

module Cloudpayments
  module Models
    class PetFindByStatusParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PetFindByStatusParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Status values that need to be considered for filter
      sig do
        returns(
          T.nilable(Cloudpayments::PetFindByStatusParams::Status::OrSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Cloudpayments::PetFindByStatusParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          status: Cloudpayments::PetFindByStatusParams::Status::OrSymbol,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Cloudpayments::PetFindByStatusParams::Status::OrSymbol,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend Cloudpayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Cloudpayments::PetFindByStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(
            :available,
            Cloudpayments::PetFindByStatusParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(
            :pending,
            Cloudpayments::PetFindByStatusParams::Status::TaggedSymbol
          )
        SOLD =
          T.let(
            :sold,
            Cloudpayments::PetFindByStatusParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Cloudpayments::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
