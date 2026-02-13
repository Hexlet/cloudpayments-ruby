# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Subscriptions#find
    class SubscriptionFindParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Идентификатор пользователя
      #
      #   @return [String]
      required :account_id, String, api_name: :AccountId

      # @!method initialize(account_id:, request_options: {})
      #   @param account_id [String] Идентификатор пользователя
      #
      #   @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
