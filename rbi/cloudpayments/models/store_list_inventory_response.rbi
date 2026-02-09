# typed: strong

module Cloudpayments
  module Models
    StoreListInventoryResponse =
      T.let(
        Cloudpayments::Internal::Type::HashOf[Integer],
        Cloudpayments::Internal::Type::Converter
      )
  end
end
