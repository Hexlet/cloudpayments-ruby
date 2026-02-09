# typed: strong

module Cloudpayments
  module Models
    PetFindByStatusResponse =
      T.let(
        Cloudpayments::Internal::Type::ArrayOf[Cloudpayments::Pet],
        Cloudpayments::Internal::Type::Converter
      )
  end
end
