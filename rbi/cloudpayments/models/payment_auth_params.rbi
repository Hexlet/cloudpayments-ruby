# typed: strong

module Cloudpayments
  module Models
    class PaymentAuthParams < Cloudpayments::Internal::Type::BaseModel
      extend Cloudpayments::Internal::Type::RequestParameters::Converter
      include Cloudpayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Cloudpayments::PaymentAuthParams,
            Cloudpayments::Internal::AnyHash
          )
        end

      # Сумма платежа (до 2 знаков после точки)
      sig { returns(Float) }
      attr_accessor :amount

      # Криптограмма платежных данных
      sig { returns(String) }
      attr_accessor :card_cryptogram_packet

      # IP-адрес плательщика
      sig { returns(String) }
      attr_accessor :ip_address

      # Идентификатор пользователя
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Язык уведомлений (ru-RU, en-US)
      sig { returns(T.nilable(String)) }
      attr_reader :culture_name

      sig { params(culture_name: String).void }
      attr_writer :culture_name

      # Валюта (RUB по умолчанию)
      sig { returns(T.nilable(String)) }
      attr_reader :currency

      sig { params(currency: String).void }
      attr_writer :currency

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

      # Номер заказа
      sig { returns(T.nilable(String)) }
      attr_reader :invoice_id

      sig { params(invoice_id: String).void }
      attr_writer :invoice_id

      # Дополнительные данные (JSON)
      sig { returns(T.nilable(T.anything)) }
      attr_reader :json_data

      sig { params(json_data: T.anything).void }
      attr_writer :json_data

      # Имя держателя карты (латиница)
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Информация о плательщике
      sig { returns(T.nilable(Cloudpayments::PaymentAuthParams::Payer)) }
      attr_reader :payer

      sig do
        params(payer: Cloudpayments::PaymentAuthParams::Payer::OrHash).void
      end
      attr_writer :payer

      # URL сайта, с которого выполняется оплата
      sig { returns(T.nilable(String)) }
      attr_reader :payment_url

      sig { params(payment_url: String).void }
      attr_writer :payment_url

      # Сохранить токен карты для повторных платежей
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :save_card

      sig { params(save_card: T::Boolean).void }
      attr_writer :save_card

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
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
            payer: Cloudpayments::PaymentAuthParams::Payer,
            payment_url: String,
            save_card: T::Boolean,
            request_options: Cloudpayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Payer < Cloudpayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Cloudpayments::PaymentAuthParams::Payer,
              Cloudpayments::Internal::AnyHash
            )
          end

        # Адрес
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # Дата рождения (YYYY-MM-DD)
        sig { returns(T.nilable(String)) }
        attr_reader :birth

        sig { params(birth: String).void }
        attr_writer :birth

        # Город
        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        # Страна (код ISO)
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # Имя
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Фамилия
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Отчество
        sig { returns(T.nilable(String)) }
        attr_reader :middle_name

        sig { params(middle_name: String).void }
        attr_writer :middle_name

        # Телефон
        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        # Почтовый индекс
        sig { returns(T.nilable(String)) }
        attr_reader :postcode

        sig { params(postcode: String).void }
        attr_writer :postcode

        # Улица
        sig { returns(T.nilable(String)) }
        attr_reader :street

        sig { params(street: String).void }
        attr_writer :street

        # Информация о плательщике
        sig do
          params(
            address: String,
            birth: String,
            city: String,
            country: String,
            first_name: String,
            last_name: String,
            middle_name: String,
            phone: String,
            postcode: String,
            street: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Адрес
          address: nil,
          # Дата рождения (YYYY-MM-DD)
          birth: nil,
          # Город
          city: nil,
          # Страна (код ISO)
          country: nil,
          # Имя
          first_name: nil,
          # Фамилия
          last_name: nil,
          # Отчество
          middle_name: nil,
          # Телефон
          phone: nil,
          # Почтовый индекс
          postcode: nil,
          # Улица
          street: nil
        )
        end

        sig do
          override.returns(
            {
              address: String,
              birth: String,
              city: String,
              country: String,
              first_name: String,
              last_name: String,
              middle_name: String,
              phone: String,
              postcode: String,
              street: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
