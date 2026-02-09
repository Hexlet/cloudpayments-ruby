# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Users#create_with_list
    class UserCreateWithListParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute items
      #
      #   @return [Array<Cloudpayments::Models::User>, nil]
      optional :items, -> { Cloudpayments::Internal::Type::ArrayOf[Cloudpayments::User] }

      # @!method initialize(items: nil, request_options: {})
      #   @param items [Array<Cloudpayments::Models::User>]
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
