# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Pets#upload_image
    class PetUploadImageParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute image
      #
      #   @return [Pathname, StringIO, IO, String, Cloudpayments::FilePart]
      required :image, Cloudpayments::Internal::Type::FileInput

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!method initialize(image:, additional_metadata: nil, request_options: {})
      #   @param image [Pathname, StringIO, IO, String, Cloudpayments::FilePart]
      #
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
