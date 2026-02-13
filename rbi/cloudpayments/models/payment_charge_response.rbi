# typed: strong

module Cloudpayments
  module Models
    # Базовый ответ API
    module PaymentChargeResponse
      extend Cloudpayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Cloudpayments::Models::PaymentChargeResponse::UnionMember0,
            Cloudpayments::Models::PaymentChargeResponse::UnionMember1
          )
        end

      class UnionMember0 < Cloudpayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Cloudpayments::Models::PaymentChargeResponse::UnionMember0,
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

        # Модель транзакции в ответе API
        sig { returns(T.nilable(Cloudpayments::Transaction)) }
        attr_reader :model

        sig { params(model: Cloudpayments::Transaction::OrHash).void }
        attr_writer :model

        # Базовый ответ API
        sig do
          params(
            success: T::Boolean,
            message: String,
            model: Cloudpayments::Transaction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Результат выполнения запроса
          success:,
          # Описание ошибки (при наличии)
          message: nil,
          # Модель транзакции в ответе API
          model: nil
        )
        end

        sig do
          override.returns(
            {
              success: T::Boolean,
              message: String,
              model: Cloudpayments::Transaction
            }
          )
        end
        def to_hash
        end
      end

      class UnionMember1 < Cloudpayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Cloudpayments::Models::PaymentChargeResponse::UnionMember1,
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

        # Модель ответа, требующего 3-D Secure аутентификацию
        sig do
          returns(
            T.nilable(
              Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model
            )
          )
        end
        attr_reader :model

        sig do
          params(
            model:
              Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model::OrHash
          ).void
        end
        attr_writer :model

        # Базовый ответ API
        sig do
          params(
            success: T::Boolean,
            message: String,
            model:
              Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Результат выполнения запроса
          success:,
          # Описание ошибки (при наличии)
          message: nil,
          # Модель ответа, требующего 3-D Secure аутентификацию
          model: nil
        )
        end

        sig do
          override.returns(
            {
              success: T::Boolean,
              message: String,
              model:
                Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model
            }
          )
        end
        def to_hash
        end

        class Model < Cloudpayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Cloudpayments::Models::PaymentChargeResponse::UnionMember1::Model,
                Cloudpayments::Internal::AnyHash
              )
            end

          # URL сервера аутентификации (ACS)
          sig { returns(String) }
          attr_accessor :acs_url

          # Разрешено ли использовать iframe
          sig { returns(T::Boolean) }
          attr_accessor :i_frame_is_allowed

          # Параметр PaReq для ACS
          sig { returns(String) }
          attr_accessor :pa_req

          # ID callback для 3DS
          sig { returns(String) }
          attr_accessor :three_ds_callback_id

          # ID транзакции (используется как MD)
          sig { returns(Integer) }
          attr_accessor :transaction_id

          # ID накопления для безопасной сделки
          sig { returns(T.nilable(String)) }
          attr_reader :escrow_accumulation_id

          sig { params(escrow_accumulation_id: String).void }
          attr_writer :escrow_accumulation_id

          # Высота фрейма
          sig { returns(T.nilable(Integer)) }
          attr_reader :frame_height

          sig { params(frame_height: Integer).void }
          attr_writer :frame_height

          # Ширина фрейма
          sig { returns(T.nilable(Integer)) }
          attr_reader :frame_width

          sig { params(frame_width: Integer).void }
          attr_writer :frame_width

          # Параметр GoReq (опционально)
          sig { returns(T.nilable(String)) }
          attr_reader :go_req

          sig { params(go_req: String).void }
          attr_writer :go_req

          # Данные сессии 3DS
          sig { returns(T.nilable(String)) }
          attr_reader :three_ds_session_data

          sig { params(three_ds_session_data: String).void }
          attr_writer :three_ds_session_data

          # Модель ответа, требующего 3-D Secure аутентификацию
          sig do
            params(
              acs_url: String,
              i_frame_is_allowed: T::Boolean,
              pa_req: String,
              three_ds_callback_id: String,
              transaction_id: Integer,
              escrow_accumulation_id: String,
              frame_height: Integer,
              frame_width: Integer,
              go_req: String,
              three_ds_session_data: String
            ).returns(T.attached_class)
          end
          def self.new(
            # URL сервера аутентификации (ACS)
            acs_url:,
            # Разрешено ли использовать iframe
            i_frame_is_allowed:,
            # Параметр PaReq для ACS
            pa_req:,
            # ID callback для 3DS
            three_ds_callback_id:,
            # ID транзакции (используется как MD)
            transaction_id:,
            # ID накопления для безопасной сделки
            escrow_accumulation_id: nil,
            # Высота фрейма
            frame_height: nil,
            # Ширина фрейма
            frame_width: nil,
            # Параметр GoReq (опционально)
            go_req: nil,
            # Данные сессии 3DS
            three_ds_session_data: nil
          )
          end

          sig do
            override.returns(
              {
                acs_url: String,
                i_frame_is_allowed: T::Boolean,
                pa_req: String,
                three_ds_callback_id: String,
                transaction_id: Integer,
                escrow_accumulation_id: String,
                frame_height: Integer,
                frame_width: Integer,
                go_req: String,
                three_ds_session_data: String
              }
            )
          end
          def to_hash
          end
        end
      end

      sig do
        override.returns(
          T::Array[Cloudpayments::Models::PaymentChargeResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
