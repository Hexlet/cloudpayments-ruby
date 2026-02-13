# frozen_string_literal: true

module Cloudpayments
  module Models
    module Payments
      # @see Cloudpayments::Resources::Payments::Tokens#charge
      class TokenChargeParams < Cloudpayments::Internal::Type::BaseModel
        extend Cloudpayments::Internal::Type::RequestParameters::Converter
        include Cloudpayments::Internal::Type::RequestParameters

        # @!attribute account_id
        #   Идентификатор пользователя
        #
        #   @return [String]
        required :account_id, String, api_name: :AccountId

        # @!attribute amount
        #   Сумма платежа (до 2 знаков после точки)
        #
        #   @return [Float]
        required :amount, Float, api_name: :Amount

        # @!attribute token
        #   Токен карты
        #
        #   @return [String]
        required :token, String, api_name: :Token

        # @!attribute tr_initiator_code
        #   Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
        #
        #   @return [Integer]
        required :tr_initiator_code, Integer, api_name: :TrInitiatorCode

        # @!attribute currency
        #   Валюта (RUB по умолчанию)
        #
        #   @return [String, nil]
        optional :currency, String, api_name: :Currency

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

        # @!attribute invoice_id
        #   Номер заказа
        #
        #   @return [String, nil]
        optional :invoice_id, String, api_name: :InvoiceId

        # @!attribute ip_address
        #   IP-адрес плательщика
        #
        #   @return [String, nil]
        optional :ip_address, String, api_name: :IpAddress

        # @!attribute json_data
        #   Дополнительные данные (JSON)
        #
        #   @return [Object, nil]
        optional :json_data, Cloudpayments::Internal::Type::Unknown, api_name: :JsonData

        # @!attribute payer
        #   Информация о плательщике
        #
        #   @return [Cloudpayments::Models::Payments::TokenChargeParams::Payer, nil]
        optional :payer, -> { Cloudpayments::Payments::TokenChargeParams::Payer }, api_name: :Payer

        # @!attribute payment_scheduled
        #   Признак регулярного платежа: 0 — нет, 1 — да
        #
        #   @return [Integer, nil]
        optional :payment_scheduled, Integer, api_name: :PaymentScheduled

        # @!method initialize(account_id:, amount:, token:, tr_initiator_code:, currency: nil, description: nil, email: nil, invoice_id: nil, ip_address: nil, json_data: nil, payer: nil, payment_scheduled: nil, request_options: {})
        #   @param account_id [String] Идентификатор пользователя
        #
        #   @param amount [Float] Сумма платежа (до 2 знаков после точки)
        #
        #   @param token [String] Токен карты
        #
        #   @param tr_initiator_code [Integer] Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
        #
        #   @param currency [String] Валюта (RUB по умолчанию)
        #
        #   @param description [String] Описание платежа
        #
        #   @param email [String] Email плательщика
        #
        #   @param invoice_id [String] Номер заказа
        #
        #   @param ip_address [String] IP-адрес плательщика
        #
        #   @param json_data [Object] Дополнительные данные (JSON)
        #
        #   @param payer [Cloudpayments::Models::Payments::TokenChargeParams::Payer] Информация о плательщике
        #
        #   @param payment_scheduled [Integer] Признак регулярного платежа: 0 — нет, 1 — да
        #
        #   @param request_options [Cloudpayments::RequestOptions, Hash{Symbol=>Object}]

        class Payer < Cloudpayments::Internal::Type::BaseModel
          # @!attribute address
          #   Адрес
          #
          #   @return [String, nil]
          optional :address, String, api_name: :Address

          # @!attribute birth
          #   Дата рождения (YYYY-MM-DD)
          #
          #   @return [String, nil]
          optional :birth, String, api_name: :Birth

          # @!attribute city
          #   Город
          #
          #   @return [String, nil]
          optional :city, String, api_name: :City

          # @!attribute country
          #   Страна (код ISO)
          #
          #   @return [String, nil]
          optional :country, String, api_name: :Country

          # @!attribute first_name
          #   Имя
          #
          #   @return [String, nil]
          optional :first_name, String, api_name: :FirstName

          # @!attribute last_name
          #   Фамилия
          #
          #   @return [String, nil]
          optional :last_name, String, api_name: :LastName

          # @!attribute middle_name
          #   Отчество
          #
          #   @return [String, nil]
          optional :middle_name, String, api_name: :MiddleName

          # @!attribute phone
          #   Телефон
          #
          #   @return [String, nil]
          optional :phone, String, api_name: :Phone

          # @!attribute postcode
          #   Почтовый индекс
          #
          #   @return [String, nil]
          optional :postcode, String, api_name: :Postcode

          # @!attribute street
          #   Улица
          #
          #   @return [String, nil]
          optional :street, String, api_name: :Street

          # @!method initialize(address: nil, birth: nil, city: nil, country: nil, first_name: nil, last_name: nil, middle_name: nil, phone: nil, postcode: nil, street: nil)
          #   Информация о плательщике
          #
          #   @param address [String] Адрес
          #
          #   @param birth [String] Дата рождения (YYYY-MM-DD)
          #
          #   @param city [String] Город
          #
          #   @param country [String] Страна (код ISO)
          #
          #   @param first_name [String] Имя
          #
          #   @param last_name [String] Фамилия
          #
          #   @param middle_name [String] Отчество
          #
          #   @param phone [String] Телефон
          #
          #   @param postcode [String] Почтовый индекс
          #
          #   @param street [String] Улица
        end
      end
    end
  end
end
