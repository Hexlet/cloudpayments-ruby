# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Pets#update
    class PetUpdateParams < Cloudpayments::Models::Pet
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
