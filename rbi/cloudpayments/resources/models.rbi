# typed: strong

module Cloudpayments
  module Resources
    class Models
      # @api private
      sig { params(client: Cloudpayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
