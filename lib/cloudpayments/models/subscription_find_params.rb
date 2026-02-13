# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Subscriptions#find
    class SubscriptionFindParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Идентификатор пользователя
      #
      #   @return [String]
      required :account_id, String, api_name: :AccountId

      # @!method initialize(account_id:, request_options: {})
      #   @param account_id [String] Идентификатор пользователя
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
