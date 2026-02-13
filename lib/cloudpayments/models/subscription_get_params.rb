# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Subscriptions#get
    class SubscriptionGetParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute id
      #   Идентификатор подписки
      #
      #   @return [String]
      required :id, String, api_name: :Id

      # @!method initialize(id:, request_options: {})
      #   @param id [String] Идентификатор подписки
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
