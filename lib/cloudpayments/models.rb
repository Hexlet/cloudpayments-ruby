# frozen_string_literal: true

module Cloudpayments
  [
    Cloudpayments::Internal::Type::BaseModel,
    *Cloudpayments::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Cloudpayments::Internal::AnyHash) } }
  end

  Cloudpayments::Internal::Util.walk_namespaces(Cloudpayments::Models).each do |mod|
    case mod
    in Cloudpayments::Internal::Type::Enum | Cloudpayments::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Cloudpayments::Internal::Util.walk_namespaces(Cloudpayments::Models)
                               .lazy
                               .grep(Cloudpayments::Internal::Type::Union)
                               .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  OrderCancelParams = Cloudpayments::Models::OrderCancelParams

  OrderCreateParams = Cloudpayments::Models::OrderCreateParams

  PaymentAuthParams = Cloudpayments::Models::PaymentAuthParams

  PaymentChargeParams = Cloudpayments::Models::PaymentChargeParams

  PaymentConfirmParams = Cloudpayments::Models::PaymentConfirmParams

  PaymentPost3dsParams = Cloudpayments::Models::PaymentPost3dsParams

  PaymentRefundParams = Cloudpayments::Models::PaymentRefundParams

  Payments = Cloudpayments::Models::Payments

  PaymentVoidParams = Cloudpayments::Models::PaymentVoidParams

  Subscription = Cloudpayments::Models::Subscription

  SubscriptionCancelParams = Cloudpayments::Models::SubscriptionCancelParams

  SubscriptionCreateParams = Cloudpayments::Models::SubscriptionCreateParams

  SubscriptionFindParams = Cloudpayments::Models::SubscriptionFindParams

  SubscriptionGetParams = Cloudpayments::Models::SubscriptionGetParams

  SubscriptionUpdateParams = Cloudpayments::Models::SubscriptionUpdateParams

  Transaction = Cloudpayments::Models::Transaction
end
