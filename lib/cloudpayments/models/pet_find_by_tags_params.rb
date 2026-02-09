# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Pets#find_by_tags
    class PetFindByTagsParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute tags
      #   Tags to filter by
      #
      #   @return [Array<String>, nil]
      optional :tags, Cloudpayments::Internal::Type::ArrayOf[String]

      # @!method initialize(tags: nil, request_options: {})
      #   @param tags [Array<String>] Tags to filter by
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
