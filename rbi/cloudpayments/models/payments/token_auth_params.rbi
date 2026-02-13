# typed: strong

module Cloudpayments
  module Models
    module Payments
      class TokenAuthParams < Cloudpayments::Internal::Type::BaseModel
        extend Cloudpayments::Internal::Type::RequestParameters::Converter
        include Cloudpayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Cloudpayments::Payments::TokenAuthParams,
              Cloudpayments::Internal::AnyHash
            )
          end

        # Идентификатор пользователя
        sig { returns(String) }
        attr_accessor :account_id

        # Сумма платежа (до 2 знаков после точки)
        sig { returns(Float) }
        attr_accessor :amount

        # Токен карты
        sig { returns(String) }
        attr_accessor :token

        # Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
        sig { returns(Integer) }
        attr_accessor :tr_initiator_code

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

        # IP-адрес плательщика
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # Дополнительные данные (JSON)
        sig { returns(T.nilable(T.anything)) }
        attr_reader :json_data

        sig { params(json_data: T.anything).void }
        attr_writer :json_data

        # Информация о плательщике
        sig do
          returns(T.nilable(Cloudpayments::Payments::TokenAuthParams::Payer))
        end
        attr_reader :payer

        sig do
          params(
            payer: Cloudpayments::Payments::TokenAuthParams::Payer::OrHash
          ).void
        end
        attr_writer :payer

        # Признак регулярного платежа: 0 — нет, 1 — да
        sig { returns(T.nilable(Integer)) }
        attr_reader :payment_scheduled

        sig { params(payment_scheduled: Integer).void }
        attr_writer :payment_scheduled

        sig do
          params(
            account_id: String,
            amount: Float,
            token: String,
            tr_initiator_code: Integer,
            currency: String,
            description: String,
            email: String,
            invoice_id: String,
            ip_address: String,
            json_data: T.anything,
            payer: Cloudpayments::Payments::TokenAuthParams::Payer::OrHash,
            payment_scheduled: Integer,
            request_options: Cloudpayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Идентификатор пользователя
          account_id:,
          # Сумма платежа (до 2 знаков после точки)
          amount:,
          # Токен карты
          token:,
          # Признак инициатора транзакции: 0 — мерчант, 1 — держатель карты
          tr_initiator_code:,
          # Валюта (RUB по умолчанию)
          currency: nil,
          # Описание платежа
          description: nil,
          # Email плательщика
          email: nil,
          # Номер заказа
          invoice_id: nil,
          # IP-адрес плательщика
          ip_address: nil,
          # Дополнительные данные (JSON)
          json_data: nil,
          # Информация о плательщике
          payer: nil,
          # Признак регулярного платежа: 0 — нет, 1 — да
          payment_scheduled: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              account_id: String,
              amount: Float,
              token: String,
              tr_initiator_code: Integer,
              currency: String,
              description: String,
              email: String,
              invoice_id: String,
              ip_address: String,
              json_data: T.anything,
              payer: Cloudpayments::Payments::TokenAuthParams::Payer,
              payment_scheduled: Integer,
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
                Cloudpayments::Payments::TokenAuthParams::Payer,
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
end
