# typed: strong

module CloudpaymentsRuby
  module Resources
    class Orders
      # Создание счёта для отправки по почте
      #
      # Создаёт ссылку на оплату и при необходимости отправляет уведомление плательщику
      # по email, SMS или Viber.
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
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
        ).returns(CloudpaymentsRuby::Models::OrderCreateResponse)
      end
      def create(
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

      # Отмена созданного счёта
      #
      # Отменяет ранее созданный счёт. После отмены оплата по ссылке невозможна.
      sig do
        params(
          id: String,
          request_options: CloudpaymentsRuby::RequestOptions::OrHash
        ).returns(CloudpaymentsRuby::Models::OrderCancelResponse)
      end
      def cancel(
        # Идентификатор заказа
        id:,
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
