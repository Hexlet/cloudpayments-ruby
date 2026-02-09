# typed: strong

module Cloudpayments
  module Resources
    class Payments
      # Двухстадийная оплата по криптограмме
      #
      # Выполняет только авторизацию (холдирование средств). Для списания необходимо
      # вызвать метод confirm. При необходимости 3-D Secure аутентификации возвращает
      # данные для перенаправления на ACS.
      sig do
        params(
          amount: Float,
          card_cryptogram_packet: String,
          ip_address: String,
          account_id: String,
          culture_name: String,
          currency: String,
          description: String,
          email: String,
          invoice_id: String,
          json_data: T.anything,
          name: String,
          payer: Cloudpayments::PaymentAuthParams::Payer::OrHash,
          payment_url: String,
          save_card: T::Boolean,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::PaymentAuthResponse::Variants)
      end
      def auth(
        # Сумма платежа (до 2 знаков после точки)
        amount:,
        # Криптограмма платежных данных
        card_cryptogram_packet:,
        # IP-адрес плательщика
        ip_address:,
        # Идентификатор пользователя
        account_id: nil,
        # Язык уведомлений (ru-RU, en-US)
        culture_name: nil,
        # Валюта (RUB по умолчанию)
        currency: nil,
        # Описание платежа
        description: nil,
        # Email плательщика
        email: nil,
        # Номер заказа
        invoice_id: nil,
        # Дополнительные данные (JSON)
        json_data: nil,
        # Имя держателя карты (латиница)
        name: nil,
        # Информация о плательщике
        payer: nil,
        # URL сайта, с которого выполняется оплата
        payment_url: nil,
        # Сохранить токен карты для повторных платежей
        save_card: nil,
        request_options: {}
      )
      end

      # Одностадийная оплата по криптограмме
      #
      # Выполняет оплату в одну стадию - авторизация и списание происходят одновременно.
      # При необходимости 3-D Secure аутентификации возвращает данные для
      # перенаправления на ACS.
      sig do
        params(
          amount: Float,
          card_cryptogram_packet: String,
          ip_address: String,
          account_id: String,
          culture_name: String,
          currency: String,
          description: String,
          email: String,
          invoice_id: String,
          json_data: T.anything,
          name: String,
          payer: Cloudpayments::PaymentChargeParams::Payer::OrHash,
          payment_url: String,
          save_card: T::Boolean,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::PaymentChargeResponse::Variants)
      end
      def charge(
        # Сумма платежа (до 2 знаков после точки)
        amount:,
        # Криптограмма платежных данных
        card_cryptogram_packet:,
        # IP-адрес плательщика
        ip_address:,
        # Идентификатор пользователя
        account_id: nil,
        # Язык уведомлений (ru-RU, en-US)
        culture_name: nil,
        # Валюта (RUB по умолчанию)
        currency: nil,
        # Описание платежа
        description: nil,
        # Email плательщика
        email: nil,
        # Номер заказа
        invoice_id: nil,
        # Дополнительные данные (JSON)
        json_data: nil,
        # Имя держателя карты (латиница)
        name: nil,
        # Информация о плательщике
        payer: nil,
        # URL сайта, с которого выполняется оплата
        payment_url: nil,
        # Сохранить токен карты для повторных платежей
        save_card: nil,
        request_options: {}
      )
      end

      # Подтверждение двухстадийного платежа
      #
      # Подтверждает ранее авторизованный платеж и инициирует списание средств. Сумма
      # подтверждения может быть меньше или равна сумме авторизации.
      sig do
        params(
          amount: Float,
          transaction_id: Integer,
          json_data: T.anything,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::PaymentConfirmResponse)
      end
      def confirm(
        # Сумма подтверждения
        amount:,
        # ID транзакции
        transaction_id:,
        # Дополнительные данные (JSON)
        json_data: nil,
        request_options: {}
      )
      end

      # Завершение 3-D Secure аутентификации
      #
      # Вызывается после возврата плательщика с ACS. Параметр TransactionId
      # соответствует MD, PaRes получается от ACS.
      sig do
        params(
          pa_res: String,
          transaction_id: Integer,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::PaymentPost3dsResponse)
      end
      def post3ds(
        # Результат 3-D Secure аутентификации
        pa_res:,
        # ID транзакции (значение параметра MD)
        transaction_id:,
        request_options: {}
      )
      end

      # Возврат средств
      #
      # Возвращает средства по завершенному платежу. Сумма возврата может быть меньше
      # или равна сумме платежа. Возможны частичные возвраты.
      sig do
        params(
          amount: Float,
          transaction_id: Integer,
          json_data: T.anything,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::PaymentRefundResponse)
      end
      def refund(
        # Сумма возврата
        amount:,
        # ID транзакции оплаты
        transaction_id:,
        # Дополнительные данные (JSON)
        json_data: nil,
        request_options: {}
      )
      end

      # Отмена платежа
      #
      # Отменяет авторизованный платеж до его подтверждения. Применимо только для
      # двухстадийных платежей.
      sig do
        params(
          transaction_id: Integer,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::PaymentVoidResponse)
      end
      def void(
        # ID транзакции
        transaction_id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Cloudpayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
