# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Orders#create
    class OrderCreateParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute amount
      #   Сумма платежа
      #
      #   @return [Float]
      required :amount, Float, api_name: :Amount

      # @!attribute description
      #   Описание платежа
      #
      #   @return [String]
      required :description, String, api_name: :Description

      # @!attribute account_id
      #   Идентификатор пользователя
      #
      #   @return [String, nil]
      optional :account_id, String, api_name: :AccountId

      # @!attribute culture_name
      #   Язык уведомлений (ru-RU, en-US)
      #
      #   @return [String, nil]
      optional :culture_name, String, api_name: :CultureName

      # @!attribute currency
      #   Валюта (RUB по умолчанию)
      #
      #   @return [String, nil]
      optional :currency, String, api_name: :Currency

      # @!attribute email
      #   Email плательщика
      #
      #   @return [String, nil]
      optional :email, String, api_name: :Email

      # @!attribute fail_redirect_url
      #   URL редиректа при неуспешной оплате
      #
      #   @return [String, nil]
      optional :fail_redirect_url, String, api_name: :FailRedirectUrl

      # @!attribute invoice_id
      #   Номер заказа в системе мерчанта
      #
      #   @return [String, nil]
      optional :invoice_id, String, api_name: :InvoiceId

      # @!attribute json_data
      #   Дополнительные данные (JSON)
      #
      #   @return [Object, nil]
      optional :json_data, Cloudpayments::Internal::Type::Unknown, api_name: :JsonData

      # @!attribute offer_uri
      #   Ссылка на оферту
      #
      #   @return [String, nil]
      optional :offer_uri, String, api_name: :OfferUri

      # @!attribute phone
      #   Телефон плательщика
      #
      #   @return [String, nil]
      optional :phone, String, api_name: :Phone

      # @!attribute require_confirmation
      #   Требуется подтверждение (двухстадийная схема)
      #
      #   @return [Boolean, nil]
      optional :require_confirmation, Cloudpayments::Internal::Type::Boolean, api_name: :RequireConfirmation

      # @!attribute send_email
      #   Отправить ссылку на email
      #
      #   @return [Boolean, nil]
      optional :send_email, Cloudpayments::Internal::Type::Boolean, api_name: :SendEmail

      # @!attribute send_sms
      #   Отправить ссылку по SMS
      #
      #   @return [Boolean, nil]
      optional :send_sms, Cloudpayments::Internal::Type::Boolean, api_name: :SendSms

      # @!attribute send_viber
      #   Отправить ссылку через Viber
      #
      #   @return [Boolean, nil]
      optional :send_viber, Cloudpayments::Internal::Type::Boolean, api_name: :SendViber

      # @!attribute subscription_behavior
      #   Поведение подписки: CreateWeekly, CreateMonthly
      #
      #   @return [String, nil]
      optional :subscription_behavior, String, api_name: :SubscriptionBehavior

      # @!attribute success_redirect_url
      #   URL редиректа при успешной оплате
      #
      #   @return [String, nil]
      optional :success_redirect_url, String, api_name: :SuccessRedirectUrl

      # @!method initialize(amount:, description:, account_id: nil, culture_name: nil, currency: nil, email: nil, fail_redirect_url: nil, invoice_id: nil, json_data: nil, offer_uri: nil, phone: nil, require_confirmation: nil, send_email: nil, send_sms: nil, send_viber: nil, subscription_behavior: nil, success_redirect_url: nil, request_options: {})
      #   @param amount [Float] Сумма платежа
      #
      #   @param description [String] Описание платежа
      #
      #   @param account_id [String] Идентификатор пользователя
      #
      #   @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      #   @param currency [String] Валюта (RUB по умолчанию)
      #
      #   @param email [String] Email плательщика
      #
      #   @param fail_redirect_url [String] URL редиректа при неуспешной оплате
      #
      #   @param invoice_id [String] Номер заказа в системе мерчанта
      #
      #   @param json_data [Object] Дополнительные данные (JSON)
      #
      #   @param offer_uri [String] Ссылка на оферту
      #
      #   @param phone [String] Телефон плательщика
      #
      #   @param require_confirmation [Boolean] Требуется подтверждение (двухстадийная схема)
      #
      #   @param send_email [Boolean] Отправить ссылку на email
      #
      #   @param send_sms [Boolean] Отправить ссылку по SMS
      #
      #   @param send_viber [Boolean] Отправить ссылку через Viber
      #
      #   @param subscription_behavior [String] Поведение подписки: CreateWeekly, CreateMonthly
      #
      #   @param success_redirect_url [String] URL редиректа при успешной оплате
      #
      #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
