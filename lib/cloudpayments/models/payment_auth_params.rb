# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Payments#auth
    class PaymentAuthParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      # @!attribute amount
      #   Сумма платежа (до 2 знаков после точки)
      #
      #   @return [Float]
      required :amount, Float, api_name: :Amount

      # @!attribute card_cryptogram_packet
      #   Криптограмма платежных данных
      #
      #   @return [String]
      required :card_cryptogram_packet, String, api_name: :CardCryptogramPacket

      # @!attribute ip_address
      #   IP-адрес плательщика
      #
      #   @return [String]
      required :ip_address, String, api_name: :IpAddress

      # @!attribute account_id
      #   Идентификатор пользователя
      #
      #   @return [String, nil]
      optional :account_id, String, api_name: :AccountId

      # @!attribute culture_name
      #   Язык уведомлений (ru-RU, en-US)
      #
      #   @return [String, nil]
      optional :culture_name, String, api_name: :CultureName

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

      # @!attribute json_data
      #   Дополнительные данные (JSON)
      #
      #   @return [Object, nil]
      optional :json_data, Cloudpayments::Internal::Type::Unknown, api_name: :JsonData

      # @!attribute name
      #   Имя держателя карты (латиница)
      #
      #   @return [String, nil]
      optional :name, String, api_name: :Name

      # @!attribute payer
      #   Информация о плательщике
      #
      #   @return [Cloudpayments::Models::PaymentAuthParams::Payer, nil]
      optional :payer, -> { Cloudpayments::PaymentAuthParams::Payer }, api_name: :Payer

      # @!attribute payment_url
      #   URL сайта, с которого выполняется оплата
      #
      #   @return [String, nil]
      optional :payment_url, String, api_name: :PaymentUrl

      # @!attribute save_card
      #   Сохранить токен карты для повторных платежей
      #
      #   @return [Boolean, nil]
      optional :save_card, Cloudpayments::Internal::Type::Boolean, api_name: :SaveCard

      # @!method initialize(amount:, card_cryptogram_packet:, ip_address:, account_id: nil, culture_name: nil, currency: nil, description: nil, email: nil, invoice_id: nil, json_data: nil, name: nil, payer: nil, payment_url: nil, save_card: nil, request_options: {})
      #   @param amount [Float] Сумма платежа (до 2 знаков после точки)
      #
      #   @param card_cryptogram_packet [String] Криптограмма платежных данных
      #
      #   @param ip_address [String] IP-адрес плательщика
      #
      #   @param account_id [String] Идентификатор пользователя
      #
      #   @param culture_name [String] Язык уведомлений (ru-RU, en-US)
      #
      #   @param currency [String] Валюта (RUB по умолчанию)
      #
      #   @param description [String] Описание платежа
      #
      #   @param email [String] Email плательщика
      #
      #   @param invoice_id [String] Номер заказа
      #
      #   @param json_data [Object] Дополнительные данные (JSON)
      #
      #   @param name [String] Имя держателя карты (латиница)
      #
      #   @param payer [Cloudpayments::Models::PaymentAuthParams::Payer] Информация о плательщике
      #
      #   @param payment_url [String] URL сайта, с которого выполняется оплата
      #
      #   @param save_card [Boolean] Сохранить токен карты для повторных платежей
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
