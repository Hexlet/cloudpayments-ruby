# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#post3ds
    class PaymentPost3dsResponse < Cloudpayments::Internal::Type::BaseModel
      # @!attribute success
      #   Результат выполнения запроса
      #
      #   @return [Boolean]
      required :success, Cloudpayments::Internal::Type::Boolean, api_name: :Success

      # @!attribute message
      #   Описание ошибки (при наличии)
      #
      #   @return [String, nil]
      optional :message, String, api_name: :Message

      # @!attribute model
      #   Модель транзакции в ответе API
      #
      #   @return [Cloudpayments::Models::PaymentPost3dsResponse::Model, nil]
      optional :model, -> { Cloudpayments::Models::PaymentPost3dsResponse::Model }, api_name: :Model

      # @!method initialize(success:, message: nil, model: nil)
      #   Базовый ответ API
      #
      #   @param success [Boolean] Результат выполнения запроса
      #
      #   @param message [String] Описание ошибки (при наличии)
      #
      #   @param model [Cloudpayments::Models::PaymentPost3dsResponse::Model] Модель транзакции в ответе API

      # @see Cloudpayments::Models::PaymentPost3dsResponse#model
      class Model < Cloudpayments::Internal::Type::BaseModel
        # @!attribute amount
        #   Сумма платежа
        #
        #   @return [Float]
        required :amount, Float, api_name: :Amount

        # @!attribute android_pay
        #   Признак Android Pay
        #
        #   @return [Boolean]
        required :android_pay, Cloudpayments::Internal::Type::Boolean, api_name: :AndroidPay

        # @!attribute card_exp_date
        #   Срок действия карты
        #
        #   @return [String]
        required :card_exp_date, String, api_name: :CardExpDate

        # @!attribute card_first_six
        #   Первые 6 цифр карты
        #
        #   @return [String]
        required :card_first_six, String, api_name: :CardFirstSix

        # @!attribute card_holder_message
        #   Сообщение для держателя карты
        #
        #   @return [String]
        required :card_holder_message, String, api_name: :CardHolderMessage

        # @!attribute card_last_four
        #   Последние 4 цифры карты
        #
        #   @return [String]
        required :card_last_four, String, api_name: :CardLastFour

        # @!attribute card_type
        #   Тип карты (Visa, MasterCard, etc.)
        #
        #   @return [String]
        required :card_type, String, api_name: :CardType

        # @!attribute card_type_code
        #   Код типа карты
        #
        #   @return [Integer]
        required :card_type_code, Integer, api_name: :CardTypeCode

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
        #   Валюта платежа
        #
        #   @return [String]
        required :currency, String, api_name: :Currency

        # @!attribute currency_code
        #   Код валюты
        #
        #   @return [Integer]
        required :currency_code, Integer, api_name: :CurrencyCode

        # @!attribute gateway_name
        #   Имя шлюза
        #
        #   @return [String]
        required :gateway_name, String, api_name: :GatewayName

        # @!attribute ip_address
        #   IP-адрес плательщика
        #
        #   @return [String]
        required :ip_address, String, api_name: :IpAddress

        # @!attribute ip_country
        #   Страна по IP
        #
        #   @return [String]
        required :ip_country, String, api_name: :IpCountry

        # @!attribute issuer
        #   Банк-эмитент
        #
        #   @return [String]
        required :issuer, String, api_name: :Issuer

        # @!attribute issuer_bank_country
        #   Страна банка-эмитента
        #
        #   @return [String]
        required :issuer_bank_country, String, api_name: :IssuerBankCountry

        # @!attribute payment_amount
        #   Сумма платежа в валюте оплаты
        #
        #   @return [Float]
        required :payment_amount, Float, api_name: :PaymentAmount

        # @!attribute payment_currency
        #   Валюта оплаты
        #
        #   @return [String]
        required :payment_currency, String, api_name: :PaymentCurrency

        # @!attribute payment_currency_code
        #   Код валюты оплаты
        #
        #   @return [Integer]
        required :payment_currency_code, Integer, api_name: :PaymentCurrencyCode

        # @!attribute public_id
        #   Public ID терминала
        #
        #   @return [String]
        required :public_id, String, api_name: :PublicId

        # @!attribute reason
        #   Причина (текст)
        #
        #   @return [String]
        required :reason, String, api_name: :Reason

        # @!attribute reason_code
        #   Код причины отклонения (0 = успех)
        #
        #   @return [Integer]
        required :reason_code, Integer, api_name: :ReasonCode

        # @!attribute refunded
        #   Признак возврата
        #
        #   @return [Boolean]
        required :refunded, Cloudpayments::Internal::Type::Boolean, api_name: :Refunded

        # @!attribute status
        #   Статус транзакции (текст)
        #
        #   @return [String]
        required :status, String, api_name: :Status

        # @!attribute status_code
        #   Код статуса транзакции
        #
        #   @return [Integer]
        required :status_code, Integer, api_name: :StatusCode

        # @!attribute terminal_url
        #   URL терминала
        #
        #   @return [String]
        required :terminal_url, String, api_name: :TerminalUrl

        # @!attribute test_mode
        #   Режим тестирования
        #
        #   @return [Boolean]
        required :test_mode, Cloudpayments::Internal::Type::Boolean, api_name: :TestMode

        # @!attribute total_fee
        #   Общая комиссия
        #
        #   @return [Float]
        required :total_fee, Float, api_name: :TotalFee

        # @!attribute transaction_id
        #   Номер транзакции
        #
        #   @return [Integer]
        required :transaction_id, Integer, api_name: :TransactionId

        # @!attribute type
        #   Тип операции
        #
        #   @return [Integer]
        required :type, Integer, api_name: :Type

        # @!attribute wallet_type
        #   Тип кошелька
        #
        #   @return [String]
        required :wallet_type, String, api_name: :WalletType

        # @!attribute account_id
        #   Идентификатор пользователя
        #
        #   @return [String, nil]
        optional :account_id, String, api_name: :AccountId

        # @!attribute auth_code
        #   Код авторизации
        #
        #   @return [String, nil]
        optional :auth_code, String, api_name: :AuthCode

        # @!attribute auth_date
        #   Дата авторизации
        #
        #   @return [String, nil]
        optional :auth_date, String, api_name: :AuthDate

        # @!attribute auth_date_iso
        #   Дата авторизации ISO
        #
        #   @return [String, nil]
        optional :auth_date_iso, String, api_name: :AuthDateIso

        # @!attribute card_category
        #   Категория карты
        #
        #   @return [String, nil]
        optional :card_category, String, api_name: :CardCategory

        # @!attribute card_product
        #   Продукт карты
        #
        #   @return [String, nil]
        optional :card_product, String, api_name: :CardProduct

        # @!attribute confirm_date
        #   Дата подтверждения
        #
        #   @return [String, nil]
        optional :confirm_date, String, api_name: :ConfirmDate

        # @!attribute confirm_date_iso
        #   Дата подтверждения ISO
        #
        #   @return [String, nil]
        optional :confirm_date_iso, String, api_name: :ConfirmDateIso

        # @!attribute description
        #   Описание платежа
        #
        #   @return [String, nil]
        optional :description, String, api_name: :Description

        # @!attribute email
        #   Email плательщика
        #
        #   @return [String, nil]
        optional :email, String, api_name: :Email

        # @!attribute escrow_accumulation_id
        #   ID накопления для безопасной сделки
        #
        #   @return [String, nil]
        optional :escrow_accumulation_id, String, api_name: :EscrowAccumulationId

        # @!attribute fall_back_scenario_declined_transaction_id
        #   ID отклоненной транзакции fallback сценария
        #
        #   @return [Integer, nil]
        optional :fall_back_scenario_declined_transaction_id,
                 Integer,
                 api_name: :FallBackScenarioDeclinedTransactionId

        # @!attribute invoice_id
        #   Номер заказа
        #
        #   @return [String, nil]
        optional :invoice_id, String, api_name: :InvoiceId

        # @!attribute ip_city
        #   Город по IP
        #
        #   @return [String, nil]
        optional :ip_city, String, api_name: :IpCity

        # @!attribute ip_district
        #   Округ по IP
        #
        #   @return [String, nil]
        optional :ip_district, String, api_name: :IpDistrict

        # @!attribute ip_latitude
        #   Широта по IP
        #
        #   @return [Float, nil]
        optional :ip_latitude, Float, api_name: :IpLatitude

        # @!attribute ip_longitude
        #   Долгота по IP
        #
        #   @return [Float, nil]
        optional :ip_longitude, Float, api_name: :IpLongitude

        # @!attribute ip_region
        #   Регион по IP
        #
        #   @return [String, nil]
        optional :ip_region, String, api_name: :IpRegion

        # @!attribute json_data
        #   Дополнительные данные JSON
        #
        #   @return [String, nil]
        optional :json_data, String, api_name: :JsonData

        # @!attribute name
        #   Имя держателя карты
        #
        #   @return [String, nil]
        optional :name, String, api_name: :Name

        # @!attribute original_transaction_id
        #   ID оригинальной транзакции
        #
        #   @return [Integer, nil]
        optional :original_transaction_id, Integer, api_name: :OriginalTransactionId

        # @!attribute payout_amount
        #   Сумма выплаты
        #
        #   @return [Float, nil]
        optional :payout_amount, Float, api_name: :PayoutAmount

        # @!attribute payout_date
        #   Дата выплаты
        #
        #   @return [String, nil]
        optional :payout_date, String, api_name: :PayoutDate

        # @!attribute payout_date_iso
        #   Дата выплаты ISO
        #
        #   @return [String, nil]
        optional :payout_date_iso, String, api_name: :PayoutDateIso

        # @!attribute rrn
        #   Retrieval Reference Number
        #
        #   @return [String, nil]
        optional :rrn, String, api_name: :Rrn

        # @!attribute subscription_id
        #   ID подписки
        #
        #   @return [String, nil]
        optional :subscription_id, String, api_name: :SubscriptionId

        # @!attribute token
        #   Токен карты для повторных платежей
        #
        #   @return [String, nil]
        optional :token, String, api_name: :Token

        # @!method initialize(amount:, android_pay:, card_exp_date:, card_first_six:, card_holder_message:, card_last_four:, card_type:, card_type_code:, created_date:, created_date_iso:, culture_name:, currency:, currency_code:, gateway_name:, ip_address:, ip_country:, issuer:, issuer_bank_country:, payment_amount:, payment_currency:, payment_currency_code:, public_id:, reason:, reason_code:, refunded:, status:, status_code:, terminal_url:, test_mode:, total_fee:, transaction_id:, type:, wallet_type:, account_id: nil, auth_code: nil, auth_date: nil, auth_date_iso: nil, card_category: nil, card_product: nil, confirm_date: nil, confirm_date_iso: nil, description: nil, email: nil, escrow_accumulation_id: nil, fall_back_scenario_declined_transaction_id: nil, invoice_id: nil, ip_city: nil, ip_district: nil, ip_latitude: nil, ip_longitude: nil, ip_region: nil, json_data: nil, name: nil, original_transaction_id: nil, payout_amount: nil, payout_date: nil, payout_date_iso: nil, rrn: nil, subscription_id: nil, token: nil)
        #   Модель транзакции в ответе API
        #
        #   @param amount [Float] Сумма платежа
        #
        #   @param android_pay [Boolean] Признак Android Pay
        #
        #   @param card_exp_date [String] Срок действия карты
        #
        #   @param card_first_six [String] Первые 6 цифр карты
        #
        #   @param card_holder_message [String] Сообщение для держателя карты
        #
        #   @param card_last_four [String] Последние 4 цифры карты
        #
        #   @param card_type [String] Тип карты (Visa, MasterCard, etc.)
        #
        #   @param card_type_code [Integer] Код типа карты
        #
        #   @param created_date [String] Дата создания (формат /Date(...)/)
        #
        #   @param created_date_iso [String] Дата создания ISO
        #
        #   @param culture_name [String] Язык
        #
        #   @param currency [String] Валюта платежа
        #
        #   @param currency_code [Integer] Код валюты
        #
        #   @param gateway_name [String] Имя шлюза
        #
        #   @param ip_address [String] IP-адрес плательщика
        #
        #   @param ip_country [String] Страна по IP
        #
        #   @param issuer [String] Банк-эмитент
        #
        #   @param issuer_bank_country [String] Страна банка-эмитента
        #
        #   @param payment_amount [Float] Сумма платежа в валюте оплаты
        #
        #   @param payment_currency [String] Валюта оплаты
        #
        #   @param payment_currency_code [Integer] Код валюты оплаты
        #
        #   @param public_id [String] Public ID терминала
        #
        #   @param reason [String] Причина (текст)
        #
        #   @param reason_code [Integer] Код причины отклонения (0 = успех)
        #
        #   @param refunded [Boolean] Признак возврата
        #
        #   @param status [String] Статус транзакции (текст)
        #
        #   @param status_code [Integer] Код статуса транзакции
        #
        #   @param terminal_url [String] URL терминала
        #
        #   @param test_mode [Boolean] Режим тестирования
        #
        #   @param total_fee [Float] Общая комиссия
        #
        #   @param transaction_id [Integer] Номер транзакции
        #
        #   @param type [Integer] Тип операции
        #
        #   @param wallet_type [String] Тип кошелька
        #
        #   @param account_id [String] Идентификатор пользователя
        #
        #   @param auth_code [String] Код авторизации
        #
        #   @param auth_date [String] Дата авторизации
        #
        #   @param auth_date_iso [String] Дата авторизации ISO
        #
        #   @param card_category [String] Категория карты
        #
        #   @param card_product [String] Продукт карты
        #
        #   @param confirm_date [String] Дата подтверждения
        #
        #   @param confirm_date_iso [String] Дата подтверждения ISO
        #
        #   @param description [String] Описание платежа
        #
        #   @param email [String] Email плательщика
        #
        #   @param escrow_accumulation_id [String] ID накопления для безопасной сделки
        #
        #   @param fall_back_scenario_declined_transaction_id [Integer] ID отклоненной транзакции fallback сценария
        #
        #   @param invoice_id [String] Номер заказа
        #
        #   @param ip_city [String] Город по IP
        #
        #   @param ip_district [String] Округ по IP
        #
        #   @param ip_latitude [Float] Широта по IP
        #
        #   @param ip_longitude [Float] Долгота по IP
        #
        #   @param ip_region [String] Регион по IP
        #
        #   @param json_data [String] Дополнительные данные JSON
        #
        #   @param name [String] Имя держателя карты
        #
        #   @param original_transaction_id [Integer] ID оригинальной транзакции
        #
        #   @param payout_amount [Float] Сумма выплаты
        #
        #   @param payout_date [String] Дата выплаты
        #
        #   @param payout_date_iso [String] Дата выплаты ISO
        #
        #   @param rrn [String] Retrieval Reference Number
        #
        #   @param subscription_id [String] ID подписки
        #
        #   @param token [String] Токен карты для повторных платежей
      end
    end
  end
end
