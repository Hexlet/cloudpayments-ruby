# frozen_string_literal: true

module Cloudpayments
  module Resources
    class Payments
      # Двухстадийная оплата по криптограмме
      #
      # Выполняет только авторизацию (холдирование средств). Для списания необходимо
      # вызвать метод confirm. При необходимости 3-D Secure аутентификации возвращает
      # данные для перенаправления на ACS.
      #
      # @overload auth(amount:, card_cryptogram_packet:, ip_address:, account_id: nil, culture_name: nil, currency: nil, description: nil, email: nil, invoice_id: nil, json_data: nil, name: nil, payer: nil, payment_url: nil, save_card: nil, request_options: {})
      #
      # @param amount [Float] Сумма платежа (до 2 знаков после точки)
      #
      # @param card_cryptogram_packet [String] Криптограмма платежных данных
      #
      # @param ip_address [String] IP-адрес плательщика
      #
      # @param account_id [String] Идентификатор пользователя
      #
      # @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      # @param currency [String] Валюта (RUB по умолчанию)
      #
      # @param description [String] Описание платежа
      #
      # @param email [String] Email плательщика
      #
      # @param invoice_id [String] Номер заказа
      #
      # @param json_data [Object] Дополнительные данные (JSON)
      #
      # @param name [String] Имя держателя карты (латиница)
      #
      # @param payer [Cloudpayments::Models::PaymentAuthParams::Payer] Информация о плательщике
      #
      # @param payment_url [String] URL сайта, с которого выполняется оплата
      #
      # @param save_card [Boolean] Сохранить токен карты для повторных платежей
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Cloudpayments::Models::PaymentAuthResponse::UnionMember0, Cloudpayments::Models::PaymentAuthResponse::UnionMember1]
      #
      # @see Cloudpayments::Models::PaymentAuthParams
      def auth(params)
        parsed, options = Cloudpayments::PaymentAuthParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments/cards/auth",
          body: parsed,
          model: Cloudpayments::Models::PaymentAuthResponse,
          options: options
        )
      end

      # Одностадийная оплата по криптограмме
      #
      # Выполняет оплату в одну стадию - авторизация и списание происходят одновременно.
      # При необходимости 3-D Secure аутентификации возвращает данные для
      # перенаправления на ACS.
      #
      # @overload charge(amount:, card_cryptogram_packet:, ip_address:, account_id: nil, culture_name: nil, currency: nil, description: nil, email: nil, invoice_id: nil, json_data: nil, name: nil, payer: nil, payment_url: nil, save_card: nil, request_options: {})
      #
      # @param amount [Float] Сумма платежа (до 2 знаков после точки)
      #
      # @param card_cryptogram_packet [String] Криптограмма платежных данных
      #
      # @param ip_address [String] IP-адрес плательщика
      #
      # @param account_id [String] Идентификатор пользователя
      #
      # @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      # @param currency [String] Валюта (RUB по умолчанию)
      #
      # @param description [String] Описание платежа
      #
      # @param email [String] Email плательщика
      #
      # @param invoice_id [String] Номер заказа
      #
      # @param json_data [Object] Дополнительные данные (JSON)
      #
      # @param name [String] Имя держателя карты (латиница)
      #
      # @param payer [Cloudpayments::Models::PaymentChargeParams::Payer] Информация о плательщике
      #
      # @param payment_url [String] URL сайта, с которого выполняется оплата
      #
      # @param save_card [Boolean] Сохранить токен карты для повторных платежей
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Cloudpayments::Models::PaymentChargeResponse::UnionMember0, Cloudpayments::Models::PaymentChargeResponse::UnionMember1]
      #
      # @see Cloudpayments::Models::PaymentChargeParams
      def charge(params)
        parsed, options = Cloudpayments::PaymentChargeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments/cards/charge",
          body: parsed,
          model: Cloudpayments::Models::PaymentChargeResponse,
          options: options
        )
      end

      # Подтверждение двухстадийного платежа
      #
      # Подтверждает ранее авторизованный платеж и инициирует списание средств. Сумма
      # подтверждения может быть меньше или равна сумме авторизации.
      #
      # @overload confirm(amount:, transaction_id:, json_data: nil, request_options: {})
      #
      # @param amount [Float] Сумма подтверждения
      #
      # @param transaction_id [Integer] ID транзакции
      #
      # @param json_data [Object] Дополнительные данные (JSON)
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Cloudpayments::Models::PaymentConfirmResponse]
      #
      # @see Cloudpayments::Models::PaymentConfirmParams
      def confirm(params)
        parsed, options = Cloudpayments::PaymentConfirmParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments/confirm",
          body: parsed,
          model: Cloudpayments::Models::PaymentConfirmResponse,
          options: options
        )
      end

      # Завершение 3-D Secure аутентификации
      #
      # Вызывается после возврата плательщика с ACS. Параметр TransactionId
      # соответствует MD, PaRes получается от ACS.
      #
      # @overload post3ds(pa_res:, transaction_id:, request_options: {})
      #
      # @param pa_res [String] Результат 3-D Secure аутентификации
      #
      # @param transaction_id [Integer] ID транзакции (значение параметра MD)
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Cloudpayments::Models::PaymentPost3dsResponse]
      #
      # @see Cloudpayments::Models::PaymentPost3dsParams
      def post3ds(params)
        parsed, options = Cloudpayments::PaymentPost3dsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments/cards/post3ds",
          body: parsed,
          model: Cloudpayments::Models::PaymentPost3dsResponse,
          options: options
        )
      end

      # Возврат средств
      #
      # Возвращает средства по завершенному платежу. Сумма возврата может быть меньше
      # или равна сумме платежа. Возможны частичные возвраты.
      #
      # @overload refund(amount:, transaction_id:, json_data: nil, request_options: {})
      #
      # @param amount [Float] Сумма возврата
      #
      # @param transaction_id [Integer] ID транзакции оплаты
      #
      # @param json_data [Object] Дополнительные данные (JSON)
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Cloudpayments::Models::PaymentRefundResponse]
      #
      # @see Cloudpayments::Models::PaymentRefundParams
      def refund(params)
        parsed, options = Cloudpayments::PaymentRefundParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments/refund",
          body: parsed,
          model: Cloudpayments::Models::PaymentRefundResponse,
          options: options
        )
      end

      # Отмена платежа
      #
      # Отменяет авторизованный платеж до его подтверждения. Применимо только для
      # двухстадийных платежей.
      #
      # @overload void(transaction_id:, request_options: {})
      #
      # @param transaction_id [Integer] ID транзакции
      #
      # @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Cloudpayments::Models::PaymentVoidResponse]
      #
      # @see Cloudpayments::Models::PaymentVoidParams
      def void(params)
        parsed, options = Cloudpayments::PaymentVoidParams.dump_request(params)
        @client.request(
          method: :post,
          path: "payments/void",
          body: parsed,
          model: Cloudpayments::Models::PaymentVoidResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Cloudpayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
