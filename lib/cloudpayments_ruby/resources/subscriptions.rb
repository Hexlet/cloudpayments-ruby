# frozen_string_literal: true

module CloudpaymentsRuby
  module Resources
    class Subscriptions
      # Создание подписки на рекуррентные платежи
      #
      # Создаёт план подписки для автоматического списания средств по указанному
      # расписанию с использованием токена карты.
      #
      # @overload create(account_id:, amount:, currency:, description:, interval:, period:, require_confirmation:, start_date:, token:, customer_receipt: nil, email: nil, max_periods: nil, request_options: {})
      #
      # @param account_id [String] Идентификатор пользователя
      #
      # @param amount [Float] Сумма платежа
      #
      # @param currency [String] Валюта
      #
      # @param description [String] Описание платежа
      #
      # @param interval [String] Интервал: Day, Week, Month
      #
      # @param period [Integer] Период (в сочетании с Interval)
      #
      # @param require_confirmation [Boolean] Требуется подтверждение (двухстадийная схема)
      #
      # @param start_date [Time] Дата и время первого платежа (UTC)
      #
      # @param token [String] Токен карты
      #
      # @param customer_receipt [Object] Данные для онлайн-чека
      #
      # @param email [String] Email плательщика
      #
      # @param max_periods [Integer] Максимальное количество платежей
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::SubscriptionCreateResponse]
      #
      # @see CloudpaymentsRuby::Models::SubscriptionCreateParams
      def create(params)
        parsed, options = CloudpaymentsRuby::SubscriptionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions/create",
          body: parsed,
          model: CloudpaymentsRuby::Models::SubscriptionCreateResponse,
          options: options
        )
      end

      # Изменение подписки на рекуррентные платежи
      #
      # Изменяет параметры существующей подписки. Если подписка была отменена или
      # завершена, изменение любого атрибута приведёт к её реактивации.
      #
      # @overload update(id:, amount: nil, culture_name: nil, currency: nil, customer_receipt: nil, description: nil, interval: nil, max_periods: nil, period: nil, require_confirmation: nil, start_date: nil, request_options: {})
      #
      # @param id [String] Идентификатор подписки
      #
      # @param amount [Float] Сумма платежа
      #
      # @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      # @param currency [String] Валюта
      #
      # @param customer_receipt [Object] Данные для онлайн-чека
      #
      # @param description [String] Описание платежа
      #
      # @param interval [String] Интервал: Day, Week, Month
      #
      # @param max_periods [Integer] Максимальное количество платежей
      #
      # @param period [Integer] Период
      #
      # @param require_confirmation [Boolean] Требуется подтверждение
      #
      # @param start_date [Time] Дата и время следующего платежа (UTC)
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::SubscriptionUpdateResponse]
      #
      # @see CloudpaymentsRuby::Models::SubscriptionUpdateParams
      def update(params)
        parsed, options = CloudpaymentsRuby::SubscriptionUpdateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions/update",
          body: parsed,
          model: CloudpaymentsRuby::Models::SubscriptionUpdateResponse,
          options: options
        )
      end

      # Отмена подписки на рекуррентные платежи
      #
      # Отменяет активную подписку. Дальнейшие автоматические списания прекращаются.
      #
      # @overload cancel(id:, request_options: {})
      #
      # @param id [String] Идентификатор подписки
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::SubscriptionCancelResponse]
      #
      # @see CloudpaymentsRuby::Models::SubscriptionCancelParams
      def cancel(params)
        parsed, options = CloudpaymentsRuby::SubscriptionCancelParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions/cancel",
          body: parsed,
          model: CloudpaymentsRuby::Models::SubscriptionCancelResponse,
          options: options
        )
      end

      # Поиск подписок
      #
      # Возвращает список подписок для указанного пользователя.
      #
      # @overload find(account_id:, request_options: {})
      #
      # @param account_id [String] Идентификатор пользователя
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::SubscriptionFindResponse]
      #
      # @see CloudpaymentsRuby::Models::SubscriptionFindParams
      def find(params)
        parsed, options = CloudpaymentsRuby::SubscriptionFindParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions/find",
          body: parsed,
          model: CloudpaymentsRuby::Models::SubscriptionFindResponse,
          options: options
        )
      end

      # Запрос информации о подписке
      #
      # Возвращает текущий статус и параметры подписки.
      #
      # @overload get(id:, request_options: {})
      #
      # @param id [String] Идентификатор подписки
      #
      # @param request_options [CloudpaymentsRuby::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [CloudpaymentsRuby::Models::SubscriptionGetResponse]
      #
      # @see CloudpaymentsRuby::Models::SubscriptionGetParams
      def get(params)
        parsed, options = CloudpaymentsRuby::SubscriptionGetParams.dump_request(params)
        @client.request(
          method: :post,
          path: "subscriptions/get",
          body: parsed,
          model: CloudpaymentsRuby::Models::SubscriptionGetResponse,
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
