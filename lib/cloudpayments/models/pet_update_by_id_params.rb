# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Pets#update_by_id
    class PetUpdateByIDParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute name
      #   Name of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute status
      #   Status of pet that needs to be updated
      #
      #   @return [String, nil]
      optional :status, String

      # @!method initialize(name: nil, status: nil, request_options: {})
      #   @param name [String] Name of pet that needs to be updated
      #
      #   @param status [String] Status of pet that needs to be updated
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
