# typed: strong

module CloudpaymentsRuby
  module Resources
    class Payments
      class Tokens
        # Двухстадийная оплата по токену (рекарринг)
        #
        # Выполняет авторизацию (холдирование средств) по сохранённому токену карты. Для
        # списания необходимо вызвать метод confirm.
        sig do
          params(
            account_id: String,
            amount: Float,
            token: String,
            tr_initiator_code: Integer,
            currency: String,
            description: String,
            email: String,
            invoice_id: String,
            ip_address: String,
            json_data: T.anything,
            payer: CloudpaymentsRuby::Payments::TokenAuthParams::Payer::OrHash,
            payment_scheduled: Integer,
            request_options: CloudpaymentsRuby::RequestOptions::OrHash
          ).returns(CloudpaymentsRuby::Models::Payments::TokenAuthResponse)
        end
        def auth(
          # Идентификатор пользователя
          account_id:,
          # Сумма платежа (до 2 знаков после точки)
          amount:,
          # Токен карты
          token:,
          # Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
          tr_initiator_code:,
          # Валюта (RUB по умолчанию)
          currency: nil,
          # Описание платежа
          description: nil,
          # Email плательщика
          email: nil,
          # Номер заказа
          invoice_id: nil,
          # IP-адрес плательщика
          ip_address: nil,
          # Дополнительные данные (JSON)
          json_data: nil,
          # Информация о плательщике
          payer: nil,
          # Признак регулярного платежа: 0 — нет, 1 — да
          payment_scheduled: nil,
          request_options: {}
        )
        end

        # Одностадийная оплата по токену (рекарринг)
        #
        # Выполняет оплату в одну стадию по сохранённому токену карты. Токен выдаётся
        # системой после первой оплаты по криптограмме.
        sig do
          params(
            account_id: String,
            amount: Float,
            token: String,
            tr_initiator_code: Integer,
            currency: String,
            description: String,
            email: String,
            invoice_id: String,
            ip_address: String,
            json_data: T.anything,
            payer:
              CloudpaymentsRuby::Payments::TokenChargeParams::Payer::OrHash,
            payment_scheduled: Integer,
            request_options: CloudpaymentsRuby::RequestOptions::OrHash
          ).returns(CloudpaymentsRuby::Models::Payments::TokenChargeResponse)
        end
        def charge(
          # Идентификатор пользователя
          account_id:,
          # Сумма платежа (до 2 знаков после точки)
          amount:,
          # Токен карты
          token:,
          # Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
          tr_initiator_code:,
          # Валюта (RUB по умолчанию)
          currency: nil,
          # Описание платежа
          description: nil,
          # Email плательщика
          email: nil,
          # Номер заказа
          invoice_id: nil,
          # IP-адрес плательщика
          ip_address: nil,
          # Дополнительные данные (JSON)
          json_data: nil,
          # Информация о плательщике
          payer: nil,
          # Признак регулярного платежа: 0 — нет, 1 — да
          payment_scheduled: nil,
          request_options: {}
        )
        end

        # @api private
        sig do
          params(client: CloudpaymentsRuby::Client).returns(T.attached_class)
        end
        def self.new(client:)
        end
      end
    end
  end
end
