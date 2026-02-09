# frozen_string_literal: true

module Cloudpayments
  module Models
    # @see Cloudpayments::Resources::Pets#create
    class Pet < Cloudpayments::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, Cloudpayments::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [Cloudpayments::Models::Category, nil]
      optional :category, -> { Cloudpayments::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, Cloudpayments::Models::Pet::Status, nil]
      optional :status, enum: -> { Cloudpayments::Pet::Status }

      # @!attribute tags
      #
      #   @return [Array<Cloudpayments::Models::Pet::Tag>, nil]
      optional :tags, -> { Cloudpayments::Internal::Type::ArrayOf[Cloudpayments::Pet::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [Cloudpayments::Models::Category]
      #
      #   @param status [Symbol, Cloudpayments::Models::Pet::Status] pet status in the store
      #
      #   @param tags [Array<Cloudpayments::Models::Pet::Tag>]

      # pet status in the store
      #
      # @see Cloudpayments::Models::Pet#status
      module Status
        extend Cloudpayments::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < Cloudpayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end
    end
  end
end
