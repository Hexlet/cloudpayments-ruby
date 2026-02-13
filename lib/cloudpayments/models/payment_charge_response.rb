# frozen_string_literal: true

module Cloudpayments
  module Models
    # Базовый ответ API
    #
    # @see Cloudpayments::Resources::Payments#charge
    module PaymentChargeResponse
      extend Cloudpayments::Internal::Type::Union

      # Базовый ответ API
      variant -> { Cloudpayments::Models::PaymentChargeResponse::UnionMember0 }

      # Базовый ответ API
      variant -> { Cloudpayments::Models::PaymentChargeResponse::UnionMember1 }

      class UnionMember0 < Cloudpayments::Internal::Type::BaseModel
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
        #   @return [Cloudpayments::Models::Transaction, nil]
        optional :model, -> { Cloudpayments::Transaction }, api_name: :Model

        # @!method initialize(success:, message: nil, model: nil)
        #   Базовый ответ API
        #
        #   @param success [Boolean] Результат выполнения запроса
        #
        #   @param message [String] Описание ошибки (при наличии)
        #
        #   @param model [Cloudpayments::Models::Transaction] Модель транзакции в ответе API
      end

      class UnionMember1 < Cloudpayments::Internal::Type::BaseModel
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
        #   Модель ответа, требующего 3-D Secure аутентификацию
        #
        #   @return [Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model, nil]
        optional :model,
                 -> { Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model },
                 api_name: :Model

        # @!method initialize(success:, message: nil, model: nil)
        #   Базовый ответ API
        #
        #   @param success [Boolean] Результат выполнения запроса
        #
        #   @param message [String] Описание ошибки (при наличии)
        #
        #   @param model [Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model] Модель ответа, требующего 3-D Secure аутентификацию

        # @see Cloudpayments::Models::PaymentChargeResponse::UnionMember1#model
        class Model < Cloudpayments::Internal::Type::BaseModel
          # @!attribute acs_url
          #   URL сервера аутентификации (ACS)
          #
          #   @return [String]
          required :acs_url, String, api_name: :AcsUrl

          # @!attribute i_frame_is_allowed
          #   Разрешено ли использовать iframe
          #
          #   @return [Boolean]
          required :i_frame_is_allowed, Cloudpayments::Internal::Type::Boolean, api_name: :IFrameIsAllowed

          # @!attribute pa_req
          #   Параметр PaReq для ACS
          #
          #   @return [String]
          required :pa_req, String, api_name: :PaReq

          # @!attribute three_ds_callback_id
          #   ID callback для 3DS
          #
          #   @return [String]
          required :three_ds_callback_id, String, api_name: :ThreeDsCallbackId

          # @!attribute transaction_id
          #   ID транзакции (используется как MD)
          #
          #   @return [Integer]
          required :transaction_id, Integer, api_name: :TransactionId

          # @!attribute escrow_accumulation_id
          #   ID накопления для безопасной сделки
          #
          #   @return [String, nil]
          optional :escrow_accumulation_id, String, api_name: :EscrowAccumulationId

          # @!attribute frame_height
          #   Высота фрейма
          #
          #   @return [Integer, nil]
          optional :frame_height, Integer, api_name: :FrameHeight

          # @!attribute frame_width
          #   Ширина фрейма
          #
          #   @return [Integer, nil]
          optional :frame_width, Integer, api_name: :FrameWidth

          # @!attribute go_req
          #   Параметр GoReq (опционально)
          #
          #   @return [String, nil]
          optional :go_req, String, api_name: :GoReq

          # @!attribute three_ds_session_data
          #   Данные сессии 3DS
          #
          #   @return [String, nil]
          optional :three_ds_session_data, String, api_name: :ThreeDsSessionData

          # @!method initialize(acs_url:, i_frame_is_allowed:, pa_req:, three_ds_callback_id:, transaction_id:, escrow_accumulation_id: nil, frame_height: nil, frame_width: nil, go_req: nil, three_ds_session_data: nil)
          #   Модель ответа, требующего 3-D Secure аутентификацию
          #
          #   @param acs_url [String] URL сервера аутентификации (ACS)
          #
          #   @param i_frame_is_allowed [Boolean] Разрешено ли использовать iframe
          #
          #   @param pa_req [String] Параметр PaReq для ACS
          #
          #   @param three_ds_callback_id [String] ID callback для 3DS
          #
          #   @param transaction_id [Integer] ID транзакции (используется как MD)
          #
          #   @param escrow_accumulation_id [String] ID накопления для безопасной сделки
          #
          #   @param frame_height [Integer] Высота фрейма
          #
          #   @param frame_width [Integer] Ширина фрейма
          #
          #   @param go_req [String] Параметр GoReq (опционально)
          #
          #   @param three_ds_session_data [String] Данные сессии 3DS
        end
      end

      # @!method self.variants
      #   @return [Array(Cloudpayments::Models::PaymentChargeResponse::UnionMember0, Cloudpayments::Models::PaymentChargeResponse::UnionMember1)]
    end
  end
end
