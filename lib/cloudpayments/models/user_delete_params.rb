# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Users#delete
    class UserDeleteParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
