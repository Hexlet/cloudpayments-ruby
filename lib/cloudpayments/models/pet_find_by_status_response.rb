# frozen_string_literal: true

module Cloudpayments
  module Models
    # @type [Cloudpayments::Internal::Type::Converter]
    PetFindByStatusResponse = Cloudpayments::Internal::Type::ArrayOf[-> { Cloudpayments::Pet }]
  end
end
