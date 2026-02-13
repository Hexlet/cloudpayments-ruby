# frozen_string_literal: true

module CloudpaymentsRuby
  module Resources
    class Payments
      class Tokens
        # Двухстадийная оплата по токену (рекарринг)
        #
        # Выполняет авторизацию (холдирование средств) по сохранённому токену карты. Для
        # списания необходимо вызвать метод confirm.
        #
        # @overload auth(account_id:, amount:, token:, tr_initiator_code:, currency: nil, description: nil, email: nil, invoice_id: nil, ip_address: nil, json_data: nil, payer: nil, payment_scheduled: nil, request_options: {})
        #
        # @param account_id [String] Идентификатор пользователя
        #
        # @param amount [Float] Сумма платежа (до 2 знаков после точки)
        #
        # @param token [String] Токен карты
        #
        # @param tr_initiator_code [Integer] Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
        #
        # @param currency [String] Валюта (RUB по умолчанию)
        #
        # @param description [String] Описание платежа
        #
        # @param email [String] Email плательщика
        #
        # @param invoice_id [String] Номер заказа
        #
        # @param ip_address [String] IP-адрес плательщика
        #
        # @param json_data [Object] Дополнительные данные (JSON)
        #
        # @param payer [CloudpaymentsRuby::Models::Payments::TokenAuthParams::Payer] Информация о плательщике
        #
        # @param payment_scheduled [Integer] Признак регулярного платежа: 0 — нет, 1 — да
        #
        # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [CloudpaymentsRuby::Models::Payments::TokenAuthResponse]
        #
        # @see CloudpaymentsRuby::Models::Payments::TokenAuthParams
        def auth(params)
          parsed, options = CloudpaymentsRuby::Payments::TokenAuthParams.dump_request(params)
          @client.request(
            method: :post,
            path: "payments/tokens/auth",
            body: parsed,
            model: CloudpaymentsRuby::Models::Payments::TokenAuthResponse,
            options: options
          )
        end

        # Одностадийная оплата по токену (рекарринг)
        #
        # Выполняет оплату в одну стадию по сохранённому токену карты. Токен выдаётся
        # системой после первой оплаты по криптограмме.
        #
        # @overload charge(account_id:, amount:, token:, tr_initiator_code:, currency: nil, description: nil, email: nil, invoice_id: nil, ip_address: nil, json_data: nil, payer: nil, payment_scheduled: nil, request_options: {})
        #
        # @param account_id [String] Идентификатор пользователя
        #
        # @param amount [Float] Сумма платежа (до 2 знаков после точки)
        #
        # @param token [String] Токен карты
        #
        # @param tr_initiator_code [Integer] Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
        #
        # @param currency [String] Валюта (RUB по умолчанию)
        #
        # @param description [String] Описание платежа
        #
        # @param email [String] Email плательщика
        #
        # @param invoice_id [String] Номер заказа
        #
        # @param ip_address [String] IP-адрес плательщика
        #
        # @param json_data [Object] Дополнительные данные (JSON)
        #
        # @param payer [CloudpaymentsRuby::Models::Payments::TokenChargeParams::Payer] Информация о плательщике
        #
        # @param payment_scheduled [Integer] Признак регулярного платежа: 0 — нет, 1 — да
        #
        # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [CloudpaymentsRuby::Models::Payments::TokenChargeResponse]
        #
        # @see CloudpaymentsRuby::Models::Payments::TokenChargeParams
        def charge(params)
          parsed, options = CloudpaymentsRuby::Payments::TokenChargeParams.dump_request(params)
          @client.request(
            method: :post,
            path: "payments/tokens/charge",
            body: parsed,
            model: CloudpaymentsRuby::Models::Payments::TokenChargeResponse,
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
end
