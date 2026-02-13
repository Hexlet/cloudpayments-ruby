# frozen_string_literal: true

module Cloudpayments
  class Client < Cloudpayments::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :public_id

    # @return [String]
    attr_reader :api_secret

    # @return [Cloudpayments::Resources::Payments]
    attr_reader :payments

    # @return [Cloudpayments::Resources::Subscriptions]
    attr_reader :subscriptions

    # @return [Cloudpayments::Resources::Orders]
    attr_reader :orders

    # @return [Cloudpayments::Resources::Models]
    attr_reader :models

    # Creates and returns a new client for interacting with the API.
    #
    # @param public_id [String, nil] Defaults to `ENV["CLOUDPAYMENTS_PUBLIC_ID"]`
    #
    # @param api_secret [String, nil] Defaults to `ENV["CLOUDPAYMENTS_API_SECRET"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["CLOUDPAYMENTS_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      public_id: ENV["CLOUDPAYMENTS_PUBLIC_ID"],
      api_secret: ENV["CLOUDPAYMENTS_API_SECRET"],
      base_url: ENV["CLOUDPAYMENTS_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.cloudpayments.ru"

      if public_id.nil?
        raise ArgumentError.new("public_id is required, and can be set via environ: \"CLOUDPAYMENTS_PUBLIC_ID\"")
      end
      if api_secret.nil?
        raise ArgumentError.new("api_secret is required, and can be set via environ: \"CLOUDPAYMENTS_API_SECRET\"")
      end

      @public_id = public_id.to_s
      @api_secret = api_secret.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @payments = Cloudpayments::Resources::Payments.new(client: self)
      @subscriptions = Cloudpayments::Resources::Subscriptions.new(client: self)
      @orders = Cloudpayments::Resources::Orders.new(client: self)
      @models = Cloudpayments::Resources::Models.new(client: self)
    end
  end
end
