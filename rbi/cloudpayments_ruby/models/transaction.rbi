# typed: strong

module CloudpaymentsRuby
  module Models
    class Transaction < CloudpaymentsRuby::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            CloudpaymentsRuby::Transaction,
            CloudpaymentsRuby::Internal::AnyHash
          )
        end

      # Сумма платежа
      sig { returns(Float) }
      attr_accessor :amount

      # Признак Android Pay
      sig { returns(T::Boolean) }
      attr_accessor :android_pay

      # Срок действия карты
      sig { returns(String) }
      attr_accessor :card_exp_date

      # Первые 6 цифр карты
      sig { returns(String) }
      attr_accessor :card_first_six

      # Сообщение для держателя карты
      sig { returns(String) }
      attr_accessor :card_holder_message

      # Последние 4 цифры карты
      sig { returns(String) }
      attr_accessor :card_last_four

      # Тип карты (Visa, MasterCard, etc.)
      sig { returns(String) }
      attr_accessor :card_type

      # Код типа карты
      sig { returns(Integer) }
      attr_accessor :card_type_code

      # Дата создания (формат /Date(...)/)
      sig { returns(String) }
      attr_accessor :created_date

      # Дата создания ISO
      sig { returns(String) }
      attr_accessor :created_date_iso

      # Язык
      sig { returns(String) }
      attr_accessor :culture_name

      # Валюта платежа
      sig { returns(String) }
      attr_accessor :currency

      # Код валюты
      sig { returns(Integer) }
      attr_accessor :currency_code

      # Имя шлюза
      sig { returns(String) }
      attr_accessor :gateway_name

      # IP-адрес плательщика
      sig { returns(String) }
      attr_accessor :ip_address

      # Страна по IP
      sig { returns(String) }
      attr_accessor :ip_country

      # Банк-эмитент
      sig { returns(String) }
      attr_accessor :issuer

      # Страна банка-эмитента
      sig { returns(String) }
      attr_accessor :issuer_bank_country

      # Сумма платежа в валюте оплаты
      sig { returns(Float) }
      attr_accessor :payment_amount

      # Валюта оплаты
      sig { returns(String) }
      attr_accessor :payment_currency

      # Код валюты оплаты
      sig { returns(Integer) }
      attr_accessor :payment_currency_code

      # Public ID терминала
      sig { returns(String) }
      attr_accessor :public_id

      # Причина (текст)
      sig { returns(String) }
      attr_accessor :reason

      # Код причины отклонения (0 = успех)
      sig { returns(Integer) }
      attr_accessor :reason_code

      # Признак возврата
      sig { returns(T::Boolean) }
      attr_accessor :refunded

      # Статус транзакции (текст)
      sig { returns(String) }
      attr_accessor :status

      # Код статуса транзакции
      sig { returns(Integer) }
      attr_accessor :status_code

      # URL терминала
      sig { returns(String) }
      attr_accessor :terminal_url

      # Режим тестирования
      sig { returns(T::Boolean) }
      attr_accessor :test_mode

      # Общая комиссия
      sig { returns(Float) }
      attr_accessor :total_fee

      # Номер транзакции
      sig { returns(Integer) }
      attr_accessor :transaction_id

      # Тип операции
      sig { returns(Integer) }
      attr_accessor :type

      # Тип кошелька
      sig { returns(String) }
      attr_accessor :wallet_type

      # Идентификатор пользователя
      sig { returns(T.nilable(String)) }
      attr_reader :account_id

      sig { params(account_id: String).void }
      attr_writer :account_id

      # Код авторизации
      sig { returns(T.nilable(String)) }
      attr_reader :auth_code

      sig { params(auth_code: String).void }
      attr_writer :auth_code

      # Дата авторизации
      sig { returns(T.nilable(String)) }
      attr_reader :auth_date

      sig { params(auth_date: String).void }
      attr_writer :auth_date

      # Дата авторизации ISO
      sig { returns(T.nilable(String)) }
      attr_reader :auth_date_iso

      sig { params(auth_date_iso: String).void }
      attr_writer :auth_date_iso

      # Категория карты
      sig { returns(T.nilable(String)) }
      attr_reader :card_category

      sig { params(card_category: String).void }
      attr_writer :card_category

      # Продукт карты
      sig { returns(T.nilable(String)) }
      attr_reader :card_product

      sig { params(card_product: String).void }
      attr_writer :card_product

      # Дата подтверждения
      sig { returns(T.nilable(String)) }
      attr_reader :confirm_date

      sig { params(confirm_date: String).void }
      attr_writer :confirm_date

      # Дата подтверждения ISO
      sig { returns(T.nilable(String)) }
      attr_reader :confirm_date_iso

      sig { params(confirm_date_iso: String).void }
      attr_writer :confirm_date_iso

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

      # ID накопления для безопасной сделки
      sig { returns(T.nilable(String)) }
      attr_reader :escrow_accumulation_id

      sig { params(escrow_accumulation_id: String).void }
      attr_writer :escrow_accumulation_id

      # ID отклоненной транзакции fallback сценария
      sig { returns(T.nilable(Integer)) }
      attr_reader :fall_back_scenario_declined_transaction_id

      sig { params(fall_back_scenario_declined_transaction_id: Integer).void }
      attr_writer :fall_back_scenario_declined_transaction_id

      # Номер заказа
      sig { returns(T.nilable(String)) }
      attr_reader :invoice_id

      sig { params(invoice_id: String).void }
      attr_writer :invoice_id

      # Город по IP
      sig { returns(T.nilable(String)) }
      attr_reader :ip_city

      sig { params(ip_city: String).void }
      attr_writer :ip_city

      # Округ по IP
      sig { returns(T.nilable(String)) }
      attr_reader :ip_district

      sig { params(ip_district: String).void }
      attr_writer :ip_district

      # Широта по IP
      sig { returns(T.nilable(Float)) }
      attr_reader :ip_latitude

      sig { params(ip_latitude: Float).void }
      attr_writer :ip_latitude

      # Долгота по IP
      sig { returns(T.nilable(Float)) }
      attr_reader :ip_longitude

      sig { params(ip_longitude: Float).void }
      attr_writer :ip_longitude

      # Регион по IP
      sig { returns(T.nilable(String)) }
      attr_reader :ip_region

      sig { params(ip_region: String).void }
      attr_writer :ip_region

      # Дополнительные данные JSON
      sig { returns(T.nilable(String)) }
      attr_reader :json_data

      sig { params(json_data: String).void }
      attr_writer :json_data

      # Имя держателя карты
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # ID оригинальной транзакции
      sig { returns(T.nilable(Integer)) }
      attr_reader :original_transaction_id

      sig { params(original_transaction_id: Integer).void }
      attr_writer :original_transaction_id

      # Сумма выплаты
      sig { returns(T.nilable(Float)) }
      attr_reader :payout_amount

      sig { params(payout_amount: Float).void }
      attr_writer :payout_amount

      # Дата выплаты
      sig { returns(T.nilable(String)) }
      attr_reader :payout_date

      sig { params(payout_date: String).void }
      attr_writer :payout_date

      # Дата выплаты ISO
      sig { returns(T.nilable(String)) }
      attr_reader :payout_date_iso

      sig { params(payout_date_iso: String).void }
      attr_writer :payout_date_iso

      # Retrieval Reference Number
      sig { returns(T.nilable(String)) }
      attr_reader :rrn

      sig { params(rrn: String).void }
      attr_writer :rrn

      # ID подписки
      sig { returns(T.nilable(String)) }
      attr_reader :subscription_id

      sig { params(subscription_id: String).void }
      attr_writer :subscription_id

      # Токен карты для повторных платежей
      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Модель транзакции в ответе API
      sig do
        params(
          amount: Float,
          android_pay: T::Boolean,
          card_exp_date: String,
          card_first_six: String,
          card_holder_message: String,
          card_last_four: String,
          card_type: String,
          card_type_code: Integer,
          created_date: String,
          created_date_iso: String,
          culture_name: String,
          currency: String,
          currency_code: Integer,
          gateway_name: String,
          ip_address: String,
          ip_country: String,
          issuer: String,
          issuer_bank_country: String,
          payment_amount: Float,
          payment_currency: String,
          payment_currency_code: Integer,
          public_id: String,
          reason: String,
          reason_code: Integer,
          refunded: T::Boolean,
          status: String,
          status_code: Integer,
          terminal_url: String,
          test_mode: T::Boolean,
          total_fee: Float,
          transaction_id: Integer,
          type: Integer,
          wallet_type: String,
          account_id: String,
          auth_code: String,
          auth_date: String,
          auth_date_iso: String,
          card_category: String,
          card_product: String,
          confirm_date: String,
          confirm_date_iso: String,
          description: String,
          email: String,
          escrow_accumulation_id: String,
          fall_back_scenario_declined_transaction_id: Integer,
          invoice_id: String,
          ip_city: String,
          ip_district: String,
          ip_latitude: Float,
          ip_longitude: Float,
          ip_region: String,
          json_data: String,
          name: String,
          original_transaction_id: Integer,
          payout_amount: Float,
          payout_date: String,
          payout_date_iso: String,
          rrn: String,
          subscription_id: String,
          token: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Сумма платежа
        amount:,
        # Признак Android Pay
        android_pay:,
        # Срок действия карты
        card_exp_date:,
        # Первые 6 цифр карты
        card_first_six:,
        # Сообщение для держателя карты
        card_holder_message:,
        # Последние 4 цифры карты
        card_last_four:,
        # Тип карты (Visa, MasterCard, etc.)
        card_type:,
        # Код типа карты
        card_type_code:,
        # Дата создания (формат /Date(...)/)
        created_date:,
        # Дата создания ISO
        created_date_iso:,
        # Язык
        culture_name:,
        # Валюта платежа
        currency:,
        # Код валюты
        currency_code:,
        # Имя шлюза
        gateway_name:,
        # IP-адрес плательщика
        ip_address:,
        # Страна по IP
        ip_country:,
        # Банк-эмитент
        issuer:,
        # Страна банка-эмитента
        issuer_bank_country:,
        # Сумма платежа в валюте оплаты
        payment_amount:,
        # Валюта оплаты
        payment_currency:,
        # Код валюты оплаты
        payment_currency_code:,
        # Public ID терминала
        public_id:,
        # Причина (текст)
        reason:,
        # Код причины отклонения (0 = успех)
        reason_code:,
        # Признак возврата
        refunded:,
        # Статус транзакции (текст)
        status:,
        # Код статуса транзакции
        status_code:,
        # URL терминала
        terminal_url:,
        # Режим тестирования
        test_mode:,
        # Общая комиссия
        total_fee:,
        # Номер транзакции
        transaction_id:,
        # Тип операции
        type:,
        # Тип кошелька
        wallet_type:,
        # Идентификатор пользователя
        account_id: nil,
        # Код авторизации
        auth_code: nil,
        # Дата авторизации
        auth_date: nil,
        # Дата авторизации ISO
        auth_date_iso: nil,
        # Категория карты
        card_category: nil,
        # Продукт карты
        card_product: nil,
        # Дата подтверждения
        confirm_date: nil,
        # Дата подтверждения ISO
        confirm_date_iso: nil,
        # Описание платежа
        description: nil,
        # Email плательщика
        email: nil,
        # ID накопления для безопасной сделки
        escrow_accumulation_id: nil,
        # ID отклоненной транзакции fallback сценария
        fall_back_scenario_declined_transaction_id: nil,
        # Номер заказа
        invoice_id: nil,
        # Город по IP
        ip_city: nil,
        # Округ по IP
        ip_district: nil,
        # Широта по IP
        ip_latitude: nil,
        # Долгота по IP
        ip_longitude: nil,
        # Регион по IP
        ip_region: nil,
        # Дополнительные данные JSON
        json_data: nil,
        # Имя держателя карты
        name: nil,
        # ID оригинальной транзакции
        original_transaction_id: nil,
        # Сумма выплаты
        payout_amount: nil,
        # Дата выплаты
        payout_date: nil,
        # Дата выплаты ISO
        payout_date_iso: nil,
        # Retrieval Reference Number
        rrn: nil,
        # ID подписки
        subscription_id: nil,
        # Токен карты для повторных платежей
        token: nil
      )
      end

      sig do
        override.returns(
          {
            amount: Float,
            android_pay: T::Boolean,
            card_exp_date: String,
            card_first_six: String,
            card_holder_message: String,
            card_last_four: String,
            card_type: String,
            card_type_code: Integer,
            created_date: String,
            created_date_iso: String,
            culture_name: String,
            currency: String,
            currency_code: Integer,
            gateway_name: String,
            ip_address: String,
            ip_country: String,
            issuer: String,
            issuer_bank_country: String,
            payment_amount: Float,
            payment_currency: String,
            payment_currency_code: Integer,
            public_id: String,
            reason: String,
            reason_code: Integer,
            refunded: T::Boolean,
            status: String,
            status_code: Integer,
            terminal_url: String,
            test_mode: T::Boolean,
            total_fee: Float,
            transaction_id: Integer,
            type: Integer,
            wallet_type: String,
            account_id: String,
            auth_code: String,
            auth_date: String,
            auth_date_iso: String,
            card_category: String,
            card_product: String,
            confirm_date: String,
            confirm_date_iso: String,
            description: String,
            email: String,
            escrow_accumulation_id: String,
            fall_back_scenario_declined_transaction_id: Integer,
            invoice_id: String,
            ip_city: String,
            ip_district: String,
            ip_latitude: Float,
            ip_longitude: Float,
            ip_region: String,
            json_data: String,
            name: String,
            original_transaction_id: Integer,
            payout_amount: Float,
            payout_date: String,
            payout_date_iso: String,
            rrn: String,
            subscription_id: String,
            token: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
