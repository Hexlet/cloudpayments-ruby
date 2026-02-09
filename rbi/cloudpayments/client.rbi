# typed: strong

module Cloudpayments
  class Client < Cloudpayments::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :public_id

    sig { returns(String) }
    attr_reader :api_secret

    sig { returns(Cloudpayments::Resources::Payments) }
    attr_reader :payments

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        public_id: T.nilable(String),
        api_secret: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["CLOUDPAYMENTS_PUBLIC_ID"]`
      public_id: ENV["CLOUDPAYMENTS_PUBLIC_ID"],
      # Defaults to `ENV["CLOUDPAYMENTS_API_SECRET"]`
      api_secret: ENV["CLOUDPAYMENTS_API_SECRET"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["CLOUDPAYMENTS_BASE_URL"]`
      base_url: ENV["CLOUDPAYMENTS_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Cloudpayments::Client::DEFAULT_MAX_RETRIES,
      timeout: Cloudpayments::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Cloudpayments::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Cloudpayments::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
