# frozen_string_literal: true

module CloudpaymentsRuby
  module Models
    # @see CloudpaymentsRuby::Resources::Orders#create
    class OrderCreateResponse < CloudpaymentsRuby::Internal::Type::BaseModel
      # @!attribute success
      #   Результат выполнения запроса
      #
      #   @return [Boolean]
      required :success, CloudpaymentsRuby::Internal::Type::Boolean, api_name: :Success

      # @!attribute message
      #   Описание ошибки (при наличии)
      #
      #   @return [String, nil]
      optional :message, String, api_name: :Message

      # @!attribute model
      #   Модель заказа (счёта)
      #
      #   @return [CloudpaymentsRuby::Models::OrderCreateResponse::Model, nil]
      optional :model, -> { CloudpaymentsRuby::Models::OrderCreateResponse::Model }, api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [CloudpaymentsRuby::Models::OrderCreateResponse::Model] Модель заказа (счёта)

      # @see CloudpaymentsRuby::Models::OrderCreateResponse#model
      class Model < CloudpaymentsRuby::Internal::Type::BaseModel
        # @!attribute amount
        #   Сумма платежа
        #
        #   @return [Float]
        required :amount, Float, api_name: :Amount

        # @!attribute created_date
        #   Дата создания (формат /Date(...)/)
        #
        #   @return [String]
        required :created_date, String, api_name: :CreatedDate

        # @!attribute created_date_iso
        #   Дата создания ISO
        #
        #   @return [String]
        required :created_date_iso, String, api_name: :CreatedDateIso

        # @!attribute culture_name
        #   Язык
        #
        #   @return [String]
        required :culture_name, String, api_name: :CultureName

        # @!attribute currency
        #   Валюта
        #
        #   @return [String]
        required :currency, String, api_name: :Currency

        # @!attribute currency_code
        #   Код валюты
        #
        #   @return [Integer]
        required :currency_code, Integer, api_name: :CurrencyCode

        # @!attribute description
        #   Описание платежа
        #
        #   @return [String]
        required :description, String, api_name: :Description

        # @!attribute id
        #   Идентификатор заказа
        #
        #   @return [String]
        required :id, String, api_name: :Id

        # @!attribute internal_id
        #   Внутренний ID
        #
        #   @return [Integer]
        required :internal_id, Integer, api_name: :InternalId

        # @!attribute number
        #   Номер заказа
        #
        #   @return [Integer]
        required :number, Integer, api_name: :Number

        # @!attribute require_confirmation
        #   Требуется подтверждение (двухстадийная схема)
        #
        #   @return [Boolean]
        required :require_confirmation,
                 CloudpaymentsRuby::Internal::Type::Boolean,
                 api_name: :RequireConfirmation

        # @!attribute status
        #   Статус
        #
        #   @return [String]
        required :status, String, api_name: :Status

        # @!attribute status_code
        #   Код статуса
        #
        #   @return [Integer]
        required :status_code, Integer, api_name: :StatusCode

        # @!attribute url
        #   Ссылка на оплату
        #
        #   @return [String]
        required :url, String, api_name: :Url

        # @!attribute email
        #   Email плательщика
        #
        #   @return [String, nil]
        optional :email, String, api_name: :Email

        # @!attribute payment_date
        #   Дата оплаты
        #
        #   @return [String, nil]
        optional :payment_date, String, api_name: :PaymentDate

        # @!attribute payment_date_iso
        #   Дата оплаты ISO
        #
        #   @return [String, nil]
        optional :payment_date_iso, String, api_name: :PaymentDateIso

        # @!attribute phone
        #   Телефон плательщика
        #
        #   @return [String, nil]
        optional :phone, String, api_name: :Phone

        # @!method initialize(amount:, created_date:, created_date_iso:, culture_name:, currency:, currency_code:, description:, id:, internal_id:, number:, require_confirmation:, status:, status_code:, url:, email: nil, payment_date: nil, payment_date_iso: nil, phone: nil)
        #   Модель заказа (счёта)
        #
        #   @param amount [Float] Сумма платежа
        #
        #   @param created_date [String] Дата создания (формат /Date(...)/)
        #
        #   @param created_date_iso [String] Дата создания ISO
        #
        #   @param culture_name [String] Язык
        #
        #   @param currency [String] Валюта
        #
        #   @param currency_code [Integer] Код валюты
        #
        #   @param description [String] Описание платежа
        #
        #   @param id [String] Идентификатор заказа
        #
        #   @param internal_id [Integer] Внутренний ID
        #
        #   @param number [Integer] Номер заказа
        #
        #   @param require_confirmation [Boolean] Требуется подтверждение (двухстадийная схема)
        #
        #   @param status [String] Статус
        #
        #   @param status_code [Integer] Код статуса
        #
        #   @param url [String] Ссылка на оплату
        #
        #   @param email [String] Email плательщика
        #
        #   @param payment_date [String] Дата оплаты
        #
        #   @param payment_date_iso [String] Дата оплаты ISO
        #
        #   @param phone [String] Телефон плательщика
      end
    end
  end
end
