# typed: strong

module Cloudpayments
  module Models
    class SubscriptionUpdateParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::SubscriptionUpdateParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Идентификатор подписки
      sig { returns(String) }
      attr_accessor :id

      # Сумма платежа
      sig { returns(T.nilable(Float)) }
      attr_reader :amount

      sig { params(amount: Float).void }
      attr_writer :amount

      # Язык уведомлений (ru-RU, en-US)
      sig { returns(T.nilable(String)) }
      attr_reader :culture_name

      sig { params(culture_name: String).void }
      attr_writer :culture_name

      # Валюта
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Данные для онлайн-чека
      sig { returns(T.nilable(T.anything)) }
      attr_reader :customer_receipt

      sig { params(customer_receipt: T.anything).void }
      attr_writer :customer_receipt

      # Описание платежа
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Интервал: Day, Week, Month
      sig { returns(T.nilable(String)) }
      attr_reader :interval

      sig { params(interval: String).void }
      attr_writer :interval

      # Максимальное количество платежей
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_periods

      sig { params(max_periods: Integer).void }
      attr_writer :max_periods

      # Период
      sig { returns(T.nilable(Integer)) }
      attr_reader :period

      sig { params(period: Integer).void }
      attr_writer :period

      # Требуется подтверждение
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_confirmation

      sig { params(require_confirmation: T::Boolean).void }
      attr_writer :require_confirmation

      # Дата и время следующего платежа (UTC)
      sig { returns(T.nilable(Time)) }
      attr_reader :start_date

      sig { params(start_date: Time).void }
      attr_writer :start_date

      sig do
        params(
          id: String,
          amount: Float,
          culture_name: String,
          currency: String,
          customer_receipt: T.anything,
          description: String,
          interval: String,
          max_periods: Integer,
          period: Integer,
          require_confirmation: T::Boolean,
          start_date: Time,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Идентификатор подписки
        id:,
        # Сумма платежа
        amount: nil,
        # Язык уведомлений (ru-RU, en-US)
        culture_name: nil,
        # Валюта
        currency: nil,
        # Данные для онлайн-чека
        customer_receipt: nil,
        # Описание платежа
        description: nil,
        # Интервал: Day, Week, Month
        interval: nil,
        # Максимальное количество платежей
        max_periods: nil,
        # Период
        period: nil,
        # Требуется подтверждение
        require_confirmation: nil,
        # Дата и время следующего платежа (UTC)
        start_date: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            amount: Float,
            culture_name: String,
            currency: String,
            customer_receipt: T.anything,
            description: String,
            interval: String,
            max_periods: Integer,
            period: Integer,
            require_confirmation: T::Boolean,
            start_date: Time,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
