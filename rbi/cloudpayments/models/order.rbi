# typed: strong

module Cloudpayments
  module Models
    class Order < Cloudpayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Cloudpayments::Order, Cloudpayments::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :complete

      sig { params(complete: T::Boolean).void }
      attr_writer :complete

      sig { returns(T.nilable(Integer)) }
      attr_reader :pet_id

      sig { params(pet_id: Integer).void }
      attr_writer :pet_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      sig { returns(T.nilable(Time)) }
      attr_reader :ship_date

      sig { params(ship_date: Time).void }
      attr_writer :ship_date

      # Order Status
      sig { returns(T.nilable(Cloudpayments::Order::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Cloudpayments::Order::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: Integer,
          complete: T::Boolean,
          pet_id: Integer,
          quantity: Integer,
          ship_date: Time,
          status: Cloudpayments::Order::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        complete: nil,
        pet_id: nil,
        quantity: nil,
        ship_date: nil,
        # Order Status
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            complete: T::Boolean,
            pet_id: Integer,
            quantity: Integer,
            ship_date: Time,
            status: Cloudpayments::Order::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Order Status
      module Status
        extend Cloudpayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Cloudpayments::Order::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLACED = T.let(:placed, Cloudpayments::Order::Status::TaggedSymbol)
        APPROVED = T.let(:approved, Cloudpayments::Order::Status::TaggedSymbol)
        DELIVERED =
          T.let(:delivered, Cloudpayments::Order::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Cloudpayments::Order::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
