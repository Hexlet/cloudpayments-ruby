# typed: strong

module Cloudpayments
  module Models
    class Pet < Cloudpayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Cloudpayments::Pet, Cloudpayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :photo_urls

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(Cloudpayments::Category)) }
      attr_reader :category

      sig { params(category: Cloudpayments::Category::OrHash).void }
      attr_writer :category

      # pet status in the store
      sig { returns(T.nilable(Cloudpayments::Pet::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Cloudpayments::Pet::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Array[Cloudpayments::Pet::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[Cloudpayments::Pet::Tag::OrHash]).void }
      attr_writer :tags

      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: Cloudpayments::Category::OrHash,
          status: Cloudpayments::Pet::Status::OrSymbol,
          tags: T::Array[Cloudpayments::Pet::Tag::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            photo_urls: T::Array[String],
            id: Integer,
            category: Cloudpayments::Category,
            status: Cloudpayments::Pet::Status::TaggedSymbol,
            tags: T::Array[Cloudpayments::Pet::Tag]
          }
        )
      end
      def to_hash
      end

      # pet status in the store
      module Status
        extend Cloudpayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Cloudpayments::Pet::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE = T.let(:available, Cloudpayments::Pet::Status::TaggedSymbol)
        PENDING = T.let(:pending, Cloudpayments::Pet::Status::TaggedSymbol)
        SOLD = T.let(:sold, Cloudpayments::Pet::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[Cloudpayments::Pet::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      class Tag < Cloudpayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Cloudpayments::Pet::Tag, Cloudpayments::Internal::AnyHash)
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: Integer, name: String).returns(T.attached_class) }
        def self.new(id: nil, name: nil)
        end

        sig { override.returns({ id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end
