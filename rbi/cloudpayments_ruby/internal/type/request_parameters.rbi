# typed: strong

module CloudpaymentsRuby
  module Internal
    module Type
      # @api private
      module RequestParameters
        # Options to specify HTTP behaviour for this request.
        sig { returns(CloudpaymentsRuby::RequestOptions) }
        attr_reader :request_options

        sig do
          params(
            request_options: CloudpaymentsRuby::RequestOptions::OrHash
          ).void
        end
        attr_writer :request_options

        # @api private
        module Converter
          # @api private
          sig do
            params(params: T.anything).returns(
              [T.anything, CloudpaymentsRuby::Internal::AnyHash]
            )
          end
          def dump_request(params)
          end
        end
      end
    end
  end
end
