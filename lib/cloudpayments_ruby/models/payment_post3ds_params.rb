# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Payments#post3ds
    class PaymentPost3dsParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

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
      #   @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
