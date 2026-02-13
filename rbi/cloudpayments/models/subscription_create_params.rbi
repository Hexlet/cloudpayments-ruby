# typed: strong

module Cloudpayments
  module Models
    class SubscriptionCreateParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::SubscriptionCreateParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Идентификатор пользователя
      sig { returns(String) }
      attr_accessor :account_id

      # Сумма платежа
      sig { returns(Float) }
      attr_accessor :amount

      # Валюта
      sig { returns(String) }
      attr_accessor :currency

      # Описание платежа
      sig { returns(String) }
      attr_accessor :description

      # Интервал: Day, Week, Month
      sig { returns(String) }
      attr_accessor :interval

      # Период (в сочетании с Interval)
      sig { returns(Integer) }
      attr_accessor :period

      # Требуется подтверждение (двухстадийная схема)
      sig { returns(T::Boolean) }
      attr_accessor :require_confirmation

      # Дата и время первого платежа (UTC)
      sig { returns(Time) }
      attr_accessor :start_date

      # Токен карты
      sig { returns(String) }
      attr_accessor :token

      # Данные для онлайн-чека
      sig { returns(T.nilable(T.anything)) }
      attr_reader :customer_receipt

      sig { params(customer_receipt: T.anything).void }
      attr_writer :customer_receipt

      # Email плательщика
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Максимальное количество платежей
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_periods

      sig { params(max_periods: Integer).void }
      attr_writer :max_periods

      sig do
        params(
          account_id: String,
          amount: Float,
          currency: String,
          description: String,
          interval: String,
          period: Integer,
          require_confirmation: T::Boolean,
          start_date: Time,
          token: String,
          customer_receipt: T.anything,
          email: String,
          max_periods: Integer,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Идентификатор пользователя
        account_id:,
        # Сумма платежа
        amount:,
        # Валюта
        currency:,
        # Описание платежа
        description:,
        # Интервал: Day, Week, Month
        interval:,
        # Период (в сочетании с Interval)
        period:,
        # Требуется подтверждение (двухстадийная схема)
        require_confirmation:,
        # Дата и время первого платежа (UTC)
        start_date:,
        # Токен карты
        token:,
        # Данные для онлайн-чека
        customer_receipt: nil,
        # Email плательщика
        email: nil,
        # Максимальное количество платежей
        max_periods: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            account_id: String,
            amount: Float,
            currency: String,
            description: String,
            interval: String,
            period: Integer,
            require_confirmation: T::Boolean,
            start_date: Time,
            token: String,
            customer_receipt: T.anything,
            email: String,
            max_periods: Integer,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
