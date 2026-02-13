# frozen_string_literal: true

module CloudpaymentsRuby
  module Resources
    class Orders
      # Создание счёта для отправки по почте
      #
      # Создаёт ссылку на оплату и при необходимости отправляет уведомление плательщику
      # по email, SMS или Viber.
      #
      # @overload create(amount:, description:, account_id: nil, culture_name: nil, currency: nil, email: nil, fail_redirect_url: nil, invoice_id: nil, json_data: nil, offer_uri: nil, phone: nil, require_confirmation: nil, send_email: nil, send_sms: nil, send_viber: nil, subscription_behavior: nil, success_redirect_url: nil, request_options: {})
      #
      # @param amount [Float] Сумма платежа
      #
      # @param description [String] Описание платежа
      #
      # @param account_id [String] Идентификатор пользователя
      #
      # @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      # @param currency [String] Валюта (RUB по умолчанию)
      #
      # @param email [String] Email плательщика
      #
      # @param fail_redirect_url [String] URL редиректа при неуспешной оплате
      #
      # @param invoice_id [String] Номер заказа в системе мерчанта
      #
      # @param json_data [Object] Дополнительные данные (JSON)
      #
      # @param offer_uri [String] Ссылка на оферту
      #
      # @param phone [String] Телефон плательщика
      #
      # @param require_confirmation [Boolean] Требуется подтверждение (двухстадийная схема)
      #
      # @param send_email [Boolean] Отправить ссылку на email
      #
      # @param send_sms [Boolean] Отправить ссылку по SMS
      #
      # @param send_viber [Boolean] Отправить ссылку через Viber
      #
      # @param subscription_behavior [String] Поведение подписки: CreateWeekly, CreateMonthly
      #
      # @param success_redirect_url [String] URL редиректа при успешной оплате
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::OrderCreateResponse]
      #
      # @see CloudpaymentsRuby::Models::OrderCreateParams
      def create(params)
        parsed, options = CloudpaymentsRuby::OrderCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "orders/create",
          body: parsed,
          model: CloudpaymentsRuby::Models::OrderCreateResponse,
          options: options
        )
      end

      # Отмена созданного счёта
      #
      # Отменяет ранее созданный счёт. После отмены оплата по ссылке невозможна.
      #
      # @overload cancel(id:, request_options: {})
      #
      # @param id [String] Идентификатор заказа
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::OrderCancelResponse]
      #
      # @see CloudpaymentsRuby::Models::OrderCancelParams
      def cancel(params)
        parsed, options = CloudpaymentsRuby::OrderCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: "orders/cancel",
          body: parsed,
          model: CloudpaymentsRuby::Models::OrderCancelResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [CloudpaymentsRuby::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
