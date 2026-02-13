# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute id
      #   Идентификатор подписки
      #
      #   @return [String]
      required :id, String, api_name: :Id

      # @!attribute amount
      #   Сумма платежа
      #
      #   @return [Float, nil]
      optional :amount, Float, api_name: :Amount

      # @!attribute culture_name
      #   Язык уведомлений (ru-RU, en-US)
      #
      #   @return [String, nil]
      optional :culture_name, String, api_name: :CultureName

      # @!attribute currency
      #   Валюта
      #
      #   @return [String, nil]
      optional :currency, String, api_name: :Currency

      # @!attribute customer_receipt
      #   Данные для онлайн-чека
      #
      #   @return [Object, nil]
      optional :customer_receipt, Cloudpayments::Internal::Type::Unknown, api_name: :CustomerReceipt

      # @!attribute description
      #   Описание платежа
      #
      #   @return [String, nil]
      optional :description, String, api_name: :Description

      # @!attribute interval
      #   Интервал: Day, Week, Month
      #
      #   @return [String, nil]
      optional :interval, String, api_name: :Interval

      # @!attribute max_periods
      #   Максимальное количество платежей
      #
      #   @return [Integer, nil]
      optional :max_periods, Integer, api_name: :MaxPeriods

      # @!attribute period
      #   Период
      #
      #   @return [Integer, nil]
      optional :period, Integer, api_name: :Period

      # @!attribute require_confirmation
      #   Требуется подтверждение
      #
      #   @return [Boolean, nil]
      optional :require_confirmation, Cloudpayments::Internal::Type::Boolean, api_name: :RequireConfirmation

      # @!attribute start_date
      #   Дата и время следующего платежа (UTC)
      #
      #   @return [Time, nil]
      optional :start_date, Time, api_name: :StartDate

      # @!method initialize(id:, amount: nil, culture_name: nil, currency: nil, customer_receipt: nil, description: nil, interval: nil, max_periods: nil, period: nil, require_confirmation: nil, start_date: nil, request_options: {})
      #   @param id [String] Идентификатор подписки
      #
      #   @param amount [Float] Сумма платежа
      #
      #   @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      #   @param currency [String] Валюта
      #
      #   @param customer_receipt [Object] Данные для онлайн-чека
      #
      #   @param description [String] Описание платежа
      #
      #   @param interval [String] Интервал: Day, Week, Month
      #
      #   @param max_periods [Integer] Максимальное количество платежей
      #
      #   @param period [Integer] Период
      #
      #   @param require_confirmation [Boolean] Требуется подтверждение
      #
      #   @param start_date [Time] Дата и время следующего платежа (UTC)
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
