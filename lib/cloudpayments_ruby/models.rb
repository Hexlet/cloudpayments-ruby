# frozen_string_literal: true

module CloudpaymentsRuby
  [
    CloudpaymentsRuby::Internal::Type::BaseModel,
    *CloudpaymentsRuby::Internal::Type::BaseModel.subclasses
  ].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, CloudpaymentsRuby::Internal::AnyHash) } }
  end

  CloudpaymentsRuby::Internal::Util.walk_namespaces(CloudpaymentsRuby::Models).each do |mod|
    case mod
    in CloudpaymentsRuby::Internal::Type::Enum | CloudpaymentsRuby::Internal::Type::Union
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

  CloudpaymentsRuby::Internal::Util.walk_namespaces(CloudpaymentsRuby::Models)
                                   .lazy
                                   .grep(CloudpaymentsRuby::Internal::Type::Union)
                                   .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  OrderCancelParams = CloudpaymentsRuby::Models::OrderCancelParams

  OrderCreateParams = CloudpaymentsRuby::Models::OrderCreateParams

  PaymentAuthParams = CloudpaymentsRuby::Models::PaymentAuthParams

  PaymentChargeParams = CloudpaymentsRuby::Models::PaymentChargeParams

  PaymentConfirmParams = CloudpaymentsRuby::Models::PaymentConfirmParams

  PaymentPost3dsParams = CloudpaymentsRuby::Models::PaymentPost3dsParams

  PaymentRefundParams = CloudpaymentsRuby::Models::PaymentRefundParams

  Payments = CloudpaymentsRuby::Models::Payments

  PaymentVoidParams = CloudpaymentsRuby::Models::PaymentVoidParams

  Subscription = CloudpaymentsRuby::Models::Subscription

  SubscriptionCancelParams = CloudpaymentsRuby::Models::SubscriptionCancelParams

  SubscriptionCreateParams = CloudpaymentsRuby::Models::SubscriptionCreateParams

  SubscriptionFindParams = CloudpaymentsRuby::Models::SubscriptionFindParams

  SubscriptionGetParams = CloudpaymentsRuby::Models::SubscriptionGetParams

  SubscriptionUpdateParams = CloudpaymentsRuby::Models::SubscriptionUpdateParams

  Transaction = CloudpaymentsRuby::Models::Transaction
end
