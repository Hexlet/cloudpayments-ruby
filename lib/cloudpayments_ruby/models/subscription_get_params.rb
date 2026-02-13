# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Subscriptions#get
    class SubscriptionGetParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      # @!attribute id
      #   Идентификатор подписки
      #
      #   @return [String]
      required :id, String, api_name: :Id

      # @!method initialize(id:, request_options: {})
      #   @param id [String] Идентификатор подписки
      #
      #   @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
