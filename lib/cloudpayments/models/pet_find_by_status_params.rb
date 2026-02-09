# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Pets#find_by_status
    class PetFindByStatusParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, Cloudpayments::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { Cloudpayments::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, Cloudpayments::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend Cloudpayments::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
