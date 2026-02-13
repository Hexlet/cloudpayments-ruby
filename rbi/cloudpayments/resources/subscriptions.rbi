# typed: strong

module Cloudpayments
  module Resources
    class Subscriptions
      # Создание подписки на рекуррентные платежи
      #
      # Создаёт план подписки для автоматического списания средств по указанному
      # расписанию с использованием токена карты.
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
        ).returns(Cloudpayments::Models::SubscriptionCreateResponse)
      end
      def create(
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

      # Изменение подписки на рекуррентные платежи
      #
      # Изменяет параметры существующей подписки. Если подписка была отменена или
      # завершена, изменение любого атрибута приведёт к её реактивации.
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
        ).returns(Cloudpayments::Models::SubscriptionUpdateResponse)
      end
      def update(
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

      # Отмена подписки на рекуррентные платежи
      #
      # Отменяет активную подписку. Дальнейшие автоматические списания прекращаются.
      sig do
        params(
          id: String,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::SubscriptionCancelResponse)
      end
      def cancel(
        # Идентификатор подписки
        id:,
        request_options: {}
      )
      end

      # Поиск подписок
      #
      # Возвращает список подписок для указанного пользователя.
      sig do
        params(
          account_id: String,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::SubscriptionFindResponse)
      end
      def find(
        # Идентификатор пользователя
        account_id:,
        request_options: {}
      )
      end

      # Запрос информации о подписке
      #
      # Возвращает текущий статус и параметры подписки.
      sig do
        params(
          id: String,
          request_options: Cloudpayments::RequestOptions::OrHash
        ).returns(Cloudpayments::Models::SubscriptionGetResponse)
      end
      def get(
        # Идентификатор подписки
        id:,
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
