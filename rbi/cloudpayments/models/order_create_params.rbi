# typed: strong

module Cloudpayments
  module Models
    class OrderCreateParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::OrderCreateParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Сумма платежа
      sig { returns(Float) }
      attr_accessor :amount

      # Описание платежа
      sig { returns(String) }
      attr_accessor :description

      # Идентификатор пользователя
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Язык уведомлений (ru-RU, en-US)
      sig { returns(T.nilable(String)) }
      attr_reader :culture_name

      sig { params(culture_name: String).void }
      attr_writer :culture_name

      # Валюта (RUB по умолчанию)
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

      # Email плательщика
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # URL редиректа при неуспешной оплате
      sig { returns(T.nilable(String)) }
      attr_reader :fail_redirect_url

      sig { params(fail_redirect_url: String).void }
      attr_writer :fail_redirect_url

      # Номер заказа в системе мерчанта
      sig { returns(T.nilable(String)) }
      attr_reader :invoice_id

      sig { params(invoice_id: String).void }
      attr_writer :invoice_id

      # Дополнительные данные (JSON)
      sig { returns(T.nilable(T.anything)) }
      attr_reader :json_data

      sig { params(json_data: T.anything).void }
      attr_writer :json_data

      # Ссылка на оферту
      sig { returns(T.nilable(String)) }
      attr_reader :offer_uri

      sig { params(offer_uri: String).void }
      attr_writer :offer_uri

      # Телефон плательщика
      sig { returns(T.nilable(String)) }
      attr_reader :phone

      sig { params(phone: String).void }
      attr_writer :phone

      # Требуется подтверждение (двухстадийная схема)
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_confirmation

      sig { params(require_confirmation: T::Boolean).void }
      attr_writer :require_confirmation

      # Отправить ссылку на email
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_email

      sig { params(send_email: T::Boolean).void }
      attr_writer :send_email

      # Отправить ссылку по SMS
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_sms

      sig { params(send_sms: T::Boolean).void }
      attr_writer :send_sms

      # Отправить ссылку через Viber
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_viber

      sig { params(send_viber: T::Boolean).void }
      attr_writer :send_viber

      # Поведение подписки: CreateWeekly, CreateMonthly
      sig { returns(T.nilable(String)) }
      attr_reader :subscription_behavior

      sig { params(subscription_behavior: String).void }
      attr_writer :subscription_behavior

      # URL редиректа при успешной оплате
      sig { returns(T.nilable(String)) }
      attr_reader :success_redirect_url

      sig { params(success_redirect_url: String).void }
      attr_writer :success_redirect_url

      sig do
        params(
          amount: Float,
          description: String,
          account_id: String,
          culture_name: String,
          currency: String,
          email: String,
          fail_redirect_url: String,
          invoice_id: String,
          json_data: T.anything,
          offer_uri: String,
          phone: String,
          require_confirmation: T::Boolean,
          send_email: T::Boolean,
          send_sms: T::Boolean,
          send_viber: T::Boolean,
          subscription_behavior: String,
          success_redirect_url: String,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Сумма платежа
        amount:,
        # Описание платежа
        description:,
        # Идентификатор пользователя
        account_id: nil,
        # Язык уведомлений (ru-RU, en-US)
        culture_name: nil,
        # Валюта (RUB по умолчанию)
        currency: nil,
        # Email плательщика
        email: nil,
        # URL редиректа при неуспешной оплате
        fail_redirect_url: nil,
        # Номер заказа в системе мерчанта
        invoice_id: nil,
        # Дополнительные данные (JSON)
        json_data: nil,
        # Ссылка на оферту
        offer_uri: nil,
        # Телефон плательщика
        phone: nil,
        # Требуется подтверждение (двухстадийная схема)
        require_confirmation: nil,
        # Отправить ссылку на email
        send_email: nil,
        # Отправить ссылку по SMS
        send_sms: nil,
        # Отправить ссылку через Viber
        send_viber: nil,
        # Поведение подписки: CreateWeekly, CreateMonthly
        subscription_behavior: nil,
        # URL редиректа при успешной оплате
        success_redirect_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            description: String,
            account_id: String,
            culture_name: String,
            currency: String,
            email: String,
            fail_redirect_url: String,
            invoice_id: String,
            json_data: T.anything,
            offer_uri: String,
            phone: String,
            require_confirmation: T::Boolean,
            send_email: T::Boolean,
            send_sms: T::Boolean,
            send_viber: T::Boolean,
            subscription_behavior: String,
            success_redirect_url: String,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
