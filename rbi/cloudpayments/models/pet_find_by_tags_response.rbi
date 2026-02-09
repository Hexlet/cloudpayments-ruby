# typed: strong

module Cloudpayments
  module Models
    PetFindByTagsResponse =
      T.let(
        Cloudpayments::Internal::Type::ArrayOf[Cloudpayments::Pet],
        Cloudpayments::Internal::Type::Converter
      )
  end
end
