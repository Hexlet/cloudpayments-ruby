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

  Category = Cloudpayments::Models::Category

  Order = Cloudpayments::Models::Order

  Pet = Cloudpayments::Models::Pet

  PetCreateParams = Cloudpayments::Models::PetCreateParams

  PetDeleteParams = Cloudpayments::Models::PetDeleteParams

  PetFindByStatusParams = Cloudpayments::Models::PetFindByStatusParams

  PetFindByTagsParams = Cloudpayments::Models::PetFindByTagsParams

  PetRetrieveParams = Cloudpayments::Models::PetRetrieveParams

  PetUpdateByIDParams = Cloudpayments::Models::PetUpdateByIDParams

  PetUpdateParams = Cloudpayments::Models::PetUpdateParams

  PetUploadImageParams = Cloudpayments::Models::PetUploadImageParams

  Store = Cloudpayments::Models::Store

  StoreListInventoryParams = Cloudpayments::Models::StoreListInventoryParams

  User = Cloudpayments::Models::User

  UserCreateParams = Cloudpayments::Models::UserCreateParams

  UserCreateWithListParams = Cloudpayments::Models::UserCreateWithListParams

  UserDeleteParams = Cloudpayments::Models::UserDeleteParams

  UserLoginParams = Cloudpayments::Models::UserLoginParams

  UserLogoutParams = Cloudpayments::Models::UserLogoutParams

  UserRetrieveParams = Cloudpayments::Models::UserRetrieveParams

  UserUpdateParams = Cloudpayments::Models::UserUpdateParams
end
