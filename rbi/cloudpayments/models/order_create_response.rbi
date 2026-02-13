# typed: strong

module Cloudpayments
  module Models
    class OrderCreateResponse < Cloudpayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::Models::OrderCreateResponse,
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

      # Модель заказа (счёта)
      sig do
        returns(T.nilable(Cloudpayments::Models::OrderCreateResponse::Model))
      end
      attr_reader :model

      sig do
        params(
          model: Cloudpayments::Models::OrderCreateResponse::Model::OrHash
        ).void
      end
      attr_writer :model

      # Базовый ответ API
      sig do
        params(
          success: T::Boolean,
          message: String,
          model: Cloudpayments::Models::OrderCreateResponse::Model::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Результат выполнения запроса
        success:,
        # Описание ошибки (при наличии)
        message: nil,
        # Модель заказа (счёта)
        model: nil
      )
      end

      sig do
        override.returns(
          {
            success: T::Boolean,
            message: String,
            model: Cloudpayments::Models::OrderCreateResponse::Model
          }
        )
      end
      def to_hash
      end

      class Model < Cloudpayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Cloudpayments::Models::OrderCreateResponse::Model,
              Cloudpayments::Internal::AnyHash
            )
          end

        # Сумма платежа
        sig { returns(Float) }
        attr_accessor :amount

        # Дата создания (формат /Date(...)/)
        sig { returns(String) }
        attr_accessor :created_date

        # Дата создания ISO
        sig { returns(String) }
        attr_accessor :created_date_iso

        # Язык
        sig { returns(String) }
        attr_accessor :culture_name

        # Валюта
        sig { returns(String) }
        attr_accessor :currency

        # Код валюты
        sig { returns(Integer) }
        attr_accessor :currency_code

        # Описание платежа
        sig { returns(String) }
        attr_accessor :description

        # Идентификатор заказа
        sig { returns(String) }
        attr_accessor :id

        # Внутренний ID
        sig { returns(Integer) }
        attr_accessor :internal_id

        # Номер заказа
        sig { returns(Integer) }
        attr_accessor :number

        # Требуется подтверждение (двухстадийная схема)
        sig { returns(T::Boolean) }
        attr_accessor :require_confirmation

        # Статус
        sig { returns(String) }
        attr_accessor :status

        # Код статуса
        sig { returns(Integer) }
        attr_accessor :status_code

        # Ссылка на оплату
        sig { returns(String) }
        attr_accessor :url

        # Email плательщика
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Дата оплаты
        sig { returns(T.nilable(String)) }
        attr_reader :payment_date

        sig { params(payment_date: String).void }
        attr_writer :payment_date

        # Дата оплаты ISO
        sig { returns(T.nilable(String)) }
        attr_reader :payment_date_iso

        sig { params(payment_date_iso: String).void }
        attr_writer :payment_date_iso

        # Телефон плательщика
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # Модель заказа (счёта)
        sig do
          params(
            amount: Float,
            created_date: String,
            created_date_iso: String,
            culture_name: String,
            currency: String,
            currency_code: Integer,
            description: String,
            id: String,
            internal_id: Integer,
            number: Integer,
            require_confirmation: T::Boolean,
            status: String,
            status_code: Integer,
            url: String,
            email: String,
            payment_date: String,
            payment_date_iso: String,
            phone: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Сумма платежа
          amount:,
          # Дата создания (формат /Date(...)/)
          created_date:,
          # Дата создания ISO
          created_date_iso:,
          # Язык
          culture_name:,
          # Валюта
          currency:,
          # Код валюты
          currency_code:,
          # Описание платежа
          description:,
          # Идентификатор заказа
          id:,
          # Внутренний ID
          internal_id:,
          # Номер заказа
          number:,
          # Требуется подтверждение (двухстадийная схема)
          require_confirmation:,
          # Статус
          status:,
          # Код статуса
          status_code:,
          # Ссылка на оплату
          url:,
          # Email плательщика
          email: nil,
          # Дата оплаты
          payment_date: nil,
          # Дата оплаты ISO
          payment_date_iso: nil,
          # Телефон плательщика
          phone: nil
        )
        end

        sig do
          override.returns(
            {
              amount: Float,
              created_date: String,
              created_date_iso: String,
              culture_name: String,
              currency: String,
              currency_code: Integer,
              description: String,
              id: String,
              internal_id: Integer,
              number: Integer,
              require_confirmation: T::Boolean,
              status: String,
              status_code: Integer,
              url: String,
              email: String,
              payment_date: String,
              payment_date_iso: String,
              phone: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
