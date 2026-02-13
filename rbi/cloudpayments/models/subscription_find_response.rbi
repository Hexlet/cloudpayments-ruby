# typed: strong

module Cloudpayments
  module Models
    class SubscriptionFindResponse < Cloudpayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::Models::SubscriptionFindResponse,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Результат выполнения запроса
      sig { returns(T::Boolean) }
      attr_accessor :success

      # Описание ошибки (при наличии)
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Данные ответа
      sig do
        returns(
          T.nilable(
            T::Array[Cloudpayments::Models::SubscriptionFindResponse::Model]
          )
        )
      end
      attr_reader :model

      sig do
        params(
          model:
            T::Array[
              Cloudpayments::Models::SubscriptionFindResponse::Model::OrHash
            ]
        ).void
      end
      attr_writer :model

      # Базовый ответ API
      sig do
        params(
          success: T::Boolean,
          message: String,
          model:
            T::Array[
              Cloudpayments::Models::SubscriptionFindResponse::Model::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # Результат выполнения запроса
        success:,
        # Описание ошибки (при наличии)
        message: nil,
        # Данные ответа
        model: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            message: String,
            model:
              T::Array[Cloudpayments::Models::SubscriptionFindResponse::Model]
          }
        )
      end
      def to_hash
      end

      class Model < Cloudpayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Cloudpayments::Models::SubscriptionFindResponse::Model,
              Cloudpayments::Internal::AnyHash
            )
          end

        # Идентификатор пользователя
        sig { returns(String) }
        attr_accessor :account_id

        # Сумма платежа
        sig { returns(Float) }
        attr_accessor :amount

        # Язык
        sig { returns(String) }
        attr_accessor :culture_name

        # Валюта
        sig { returns(String) }
        attr_accessor :currency

        # Код валюты
        sig { returns(Integer) }
        attr_accessor :currency_code

        # Количество неуспешных транзакций
        sig { returns(Integer) }
        attr_accessor :failed_transactions_number

        # Идентификатор подписки
        sig { returns(String) }
        attr_accessor :id

        # Интервал
        sig { returns(String) }
        attr_accessor :interval

        # Код интервала
        sig { returns(Integer) }
        attr_accessor :interval_code

        # Период
        sig { returns(Integer) }
        attr_accessor :period

        # Требуется подтверждение (двухстадийная схема)
        sig { returns(T::Boolean) }
        attr_accessor :require_confirmation

        # Дата начала (формат /Date(...)/)
        sig { returns(String) }
        attr_accessor :start_date

        # Дата начала ISO
        sig { returns(String) }
        attr_accessor :start_date_iso

        # Статус
        sig { returns(String) }
        attr_accessor :status

        # Код статуса
        sig { returns(Integer) }
        attr_accessor :status_code

        # Количество успешных транзакций
        sig { returns(Integer) }
        attr_accessor :successful_transactions_number

        # Описание платежа
        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        # Email плательщика
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # ID схемы фейловера
        sig { returns(T.nilable(String)) }
        attr_reader :failover_scheme_id

        sig { params(failover_scheme_id: String).void }
        attr_writer :failover_scheme_id

        # Дата последней транзакции
        sig { returns(T.nilable(String)) }
        attr_reader :last_transaction_date

        sig { params(last_transaction_date: String).void }
        attr_writer :last_transaction_date

        # Дата последней транзакции ISO
        sig { returns(T.nilable(String)) }
        attr_reader :last_transaction_date_iso

        sig { params(last_transaction_date_iso: String).void }
        attr_writer :last_transaction_date_iso

        # Максимальное количество платежей
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_periods

        sig { params(max_periods: Integer).void }
        attr_writer :max_periods

        # Дата следующей транзакции
        sig { returns(T.nilable(String)) }
        attr_reader :next_transaction_date

        sig { params(next_transaction_date: String).void }
        attr_writer :next_transaction_date

        # Дата следующей транзакции ISO
        sig { returns(T.nilable(String)) }
        attr_reader :next_transaction_date_iso

        sig { params(next_transaction_date_iso: String).void }
        attr_writer :next_transaction_date_iso

        # Данные чека
        sig { returns(T.nilable(T.anything)) }
        attr_reader :receipt

        sig { params(receipt: T.anything).void }
        attr_writer :receipt

        # Модель подписки на рекуррентные платежи
        sig do
          params(
            account_id: String,
            amount: Float,
            culture_name: String,
            currency: String,
            currency_code: Integer,
            failed_transactions_number: Integer,
            id: String,
            interval: String,
            interval_code: Integer,
            period: Integer,
            require_confirmation: T::Boolean,
            start_date: String,
            start_date_iso: String,
            status: String,
            status_code: Integer,
            successful_transactions_number: Integer,
            description: String,
            email: String,
            failover_scheme_id: String,
            last_transaction_date: String,
            last_transaction_date_iso: String,
            max_periods: Integer,
            next_transaction_date: String,
            next_transaction_date_iso: String,
            receipt: T.anything
          ).returns(T.attached_class)
        end
        def self.new(
          # Идентификатор пользователя
          account_id:,
          # Сумма платежа
          amount:,
          # Язык
          culture_name:,
          # Валюта
          currency:,
          # Код валюты
          currency_code:,
          # Количество неуспешных транзакций
          failed_transactions_number:,
          # Идентификатор подписки
          id:,
          # Интервал
          interval:,
          # Код интервала
          interval_code:,
          # Период
          period:,
          # Требуется подтверждение (двухстадийная схема)
          require_confirmation:,
          # Дата начала (формат /Date(...)/)
          start_date:,
          # Дата начала ISO
          start_date_iso:,
          # Статус
          status:,
          # Код статуса
          status_code:,
          # Количество успешных транзакций
          successful_transactions_number:,
          # Описание платежа
          description: nil,
          # Email плательщика
          email: nil,
          # ID схемы фейловера
          failover_scheme_id: nil,
          # Дата последней транзакции
          last_transaction_date: nil,
          # Дата последней транзакции ISO
          last_transaction_date_iso: nil,
          # Максимальное количество платежей
          max_periods: nil,
          # Дата следующей транзакции
          next_transaction_date: nil,
          # Дата следующей транзакции ISO
          next_transaction_date_iso: nil,
          # Данные чека
          receipt: nil
        )
        end

        sig do
          override.returns(
            {
              account_id: String,
              amount: Float,
              culture_name: String,
              currency: String,
              currency_code: Integer,
              failed_transactions_number: Integer,
              id: String,
              interval: String,
              interval_code: Integer,
              period: Integer,
              require_confirmation: T::Boolean,
              start_date: String,
              start_date_iso: String,
              status: String,
              status_code: Integer,
              successful_transactions_number: Integer,
              description: String,
              email: String,
              failover_scheme_id: String,
              last_transaction_date: String,
              last_transaction_date_iso: String,
              max_periods: Integer,
              next_transaction_date: String,
              next_transaction_date_iso: String,
              receipt: T.anything
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
