# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Subscriptions#create
    class SubscriptionCreateParams < CloudpaymentsRuby::Internal::Type::BaseModel
      extend CloudpaymentsRuby::Internal::Type::RequestParameters::Converter
      include CloudpaymentsRuby::Internal::Type::RequestParameters

      # @!attribute account_id
      #   Идентификатор пользователя
      #
      #   @return [String]
      required :account_id, String, api_name: :AccountId

      # @!attribute amount
      #   Сумма платежа
      #
      #   @return [Float]
      required :amount, Float, api_name: :Amount

      # @!attribute currency
      #   Валюта
      #
      #   @return [String]
      required :currency, String, api_name: :Currency

      # @!attribute description
      #   Описание платежа
      #
      #   @return [String]
      required :description, String, api_name: :Description

      # @!attribute interval
      #   Интервал: Day, Week, Month
      #
      #   @return [String]
      required :interval, String, api_name: :Interval

      # @!attribute period
      #   Период (в сочетании с Interval)
      #
      #   @return [Integer]
      required :period, Integer, api_name: :Period

      # @!attribute require_confirmation
      #   Требуется подтверждение (двухстадийная схема)
      #
      #   @return [Boolean]
      required :require_confirmation,
               CloudpaymentsRuby::Internal::Type::Boolean,
               api_name: :RequireConfirmation

      # @!attribute start_date
      #   Дата и время первого платежа (UTC)
      #
      #   @return [Time]
      required :start_date, Time, api_name: :StartDate

      # @!attribute token
      #   Токен карты
      #
      #   @return [String]
      required :token, String, api_name: :Token

      # @!attribute customer_receipt
      #   Данные для онлайн-чека
      #
      #   @return [Object, nil]
      optional :customer_receipt, CloudpaymentsRuby::Internal::Type::Unknown, api_name: :CustomerReceipt

      # @!attribute email
      #   Email плательщика
      #
      #   @return [String, nil]
      optional :email, String, api_name: :Email

      # @!attribute max_periods
      #   Максимальное количество платежей
      #
      #   @return [Integer, nil]
      optional :max_periods, Integer, api_name: :MaxPeriods

      # @!method initialize(account_id:, amount:, currency:, description:, interval:, period:, require_confirmation:, start_date:, token:, customer_receipt: nil, email: nil, max_periods: nil, request_options: {})
      #   @param account_id [String] Идентификатор пользователя
      #
      #   @param amount [Float] Сумма платежа
      #
      #   @param currency [String] Валюта
      #
      #   @param description [String] Описание платежа
      #
      #   @param interval [String] Интервал: Day, Week, Month
      #
      #   @param period [Integer] Период (в сочетании с Interval)
      #
      #   @param require_confirmation [Boolean] Требуется подтверждение (двухстадийная схема)
      #
      #   @param start_date [Time] Дата и время первого платежа (UTC)
      #
      #   @param token [String] Токен карты
      #
      #   @param customer_receipt [Object] Данные для онлайн-чека
      #
      #   @param email [String] Email плательщика
      #
      #   @param max_periods [Integer] Максимальное количество платежей
      #
      #   @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
