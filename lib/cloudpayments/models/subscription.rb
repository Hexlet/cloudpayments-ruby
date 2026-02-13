# frozen_string_literal: true

module Cloudpayments
  module Models
    class Subscription < Cloudpayments::Internal::Type::BaseModel
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

      # @!attribute culture_name
      #   Язык
      #
      #   @return [String]
      required :culture_name, String, api_name: :CultureName

      # @!attribute currency
      #   Валюта
      #
      #   @return [String]
      required :currency, String, api_name: :Currency

      # @!attribute currency_code
      #   Код валюты
      #
      #   @return [Integer]
      required :currency_code, Integer, api_name: :CurrencyCode

      # @!attribute failed_transactions_number
      #   Количество неуспешных транзакций
      #
      #   @return [Integer]
      required :failed_transactions_number, Integer, api_name: :FailedTransactionsNumber

      # @!attribute id
      #   Идентификатор подписки
      #
      #   @return [String]
      required :id, String, api_name: :Id

      # @!attribute interval
      #   Интервал
      #
      #   @return [String]
      required :interval, String, api_name: :Interval

      # @!attribute interval_code
      #   Код интервала
      #
      #   @return [Integer]
      required :interval_code, Integer, api_name: :IntervalCode

      # @!attribute period
      #   Период
      #
      #   @return [Integer]
      required :period, Integer, api_name: :Period

      # @!attribute require_confirmation
      #   Требуется подтверждение (двухстадийная схема)
      #
      #   @return [Boolean]
      required :require_confirmation, Cloudpayments::Internal::Type::Boolean, api_name: :RequireConfirmation

      # @!attribute start_date
      #   Дата начала (формат /Date(...)/)
      #
      #   @return [String]
      required :start_date, String, api_name: :StartDate

      # @!attribute start_date_iso
      #   Дата начала ISO
      #
      #   @return [String]
      required :start_date_iso, String, api_name: :StartDateIso

      # @!attribute status
      #   Статус
      #
      #   @return [String]
      required :status, String, api_name: :Status

      # @!attribute status_code
      #   Код статуса
      #
      #   @return [Integer]
      required :status_code, Integer, api_name: :StatusCode

      # @!attribute successful_transactions_number
      #   Количество успешных транзакций
      #
      #   @return [Integer]
      required :successful_transactions_number, Integer, api_name: :SuccessfulTransactionsNumber

      # @!attribute description
      #   Описание платежа
      #
      #   @return [String, nil]
      optional :description, String, api_name: :Description

      # @!attribute email
      #   Email плательщика
      #
      #   @return [String, nil]
      optional :email, String, api_name: :Email

      # @!attribute failover_scheme_id
      #   ID схемы фейловера
      #
      #   @return [String, nil]
      optional :failover_scheme_id, String, api_name: :FailoverSchemeId

      # @!attribute last_transaction_date
      #   Дата последней транзакции
      #
      #   @return [String, nil]
      optional :last_transaction_date, String, api_name: :LastTransactionDate

      # @!attribute last_transaction_date_iso
      #   Дата последней транзакции ISO
      #
      #   @return [String, nil]
      optional :last_transaction_date_iso, String, api_name: :LastTransactionDateIso

      # @!attribute max_periods
      #   Максимальное количество платежей
      #
      #   @return [Integer, nil]
      optional :max_periods, Integer, api_name: :MaxPeriods

      # @!attribute next_transaction_date
      #   Дата следующей транзакции
      #
      #   @return [String, nil]
      optional :next_transaction_date, String, api_name: :NextTransactionDate

      # @!attribute next_transaction_date_iso
      #   Дата следующей транзакции ISO
      #
      #   @return [String, nil]
      optional :next_transaction_date_iso, String, api_name: :NextTransactionDateIso

      # @!attribute receipt
      #   Данные чека
      #
      #   @return [Object, nil]
      optional :receipt, Cloudpayments::Internal::Type::Unknown, api_name: :Receipt

      # @!method initialize(account_id:, amount:, culture_name:, currency:, currency_code:, failed_transactions_number:, id:, interval:, interval_code:, period:, require_confirmation:, start_date:, start_date_iso:, status:, status_code:, successful_transactions_number:, description: nil, email: nil, failover_scheme_id: nil, last_transaction_date: nil, last_transaction_date_iso: nil, max_periods: nil, next_transaction_date: nil, next_transaction_date_iso: nil, receipt: nil)
      #   Модель подписки на рекуррентные платежи
      #
      #   @param account_id [String] Идентификатор пользователя
      #
      #   @param amount [Float] Сумма платежа
      #
      #   @param culture_name [String] Язык
      #
      #   @param currency [String] Валюта
      #
      #   @param currency_code [Integer] Код валюты
      #
      #   @param failed_transactions_number [Integer] Количество неуспешных транзакций
      #
      #   @param id [String] Идентификатор подписки
      #
      #   @param interval [String] Интервал
      #
      #   @param interval_code [Integer] Код интервала
      #
      #   @param period [Integer] Период
      #
      #   @param require_confirmation [Boolean] Требуется подтверждение (двухстадийная схема)
      #
      #   @param start_date [String] Дата начала (формат /Date(...)/)
      #
      #   @param start_date_iso [String] Дата начала ISO
      #
      #   @param status [String] Статус
      #
      #   @param status_code [Integer] Код статуса
      #
      #   @param successful_transactions_number [Integer] Количество успешных транзакций
      #
      #   @param description [String] Описание платежа
      #
      #   @param email [String] Email плательщика
      #
      #   @param failover_scheme_id [String] ID схемы фейловера
      #
      #   @param last_transaction_date [String] Дата последней транзакции
      #
      #   @param last_transaction_date_iso [String] Дата последней транзакции ISO
      #
      #   @param max_periods [Integer] Максимальное количество платежей
      #
      #   @param next_transaction_date [String] Дата следующей транзакции
      #
      #   @param next_transaction_date_iso [String] Дата следующей транзакции ISO
      #
      #   @param receipt [Object] Данные чека
    end
  end
end
