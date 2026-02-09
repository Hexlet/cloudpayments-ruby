# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#post3ds
    class PaymentPost3dsParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute pa_res
      #   Результат 3-D Secure аутентификации
      #
      #   @return [String]
      required :pa_res, String, api_name: :PaRes

      # @!attribute transaction_id
      #   ID транзакции (значение параметра MD)
      #
      #   @return [Integer]
      required :transaction_id, Integer, api_name: :TransactionId

      # @!method initialize(pa_res:, transaction_id:, request_options: {})
      #   @param pa_res [String] Результат 3-D Secure аутентификации
      #
      #   @param transaction_id [Integer] ID транзакции (значение параметра MD)
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
