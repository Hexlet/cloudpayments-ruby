# frozen_string_literal: true

require_relative "../../test_helper"

class CloudpaymentsRuby::Test::Resources::Payments::TokensTest < CloudpaymentsRuby::Test::ResourceTest
  def test_auth_required_params
    skip("Prism tests are disabled")

    response =
      @cloudpayments.payments.tokens.auth(
        account_id: "AccountId",
        amount: 0,
        token: "Token",
        tr_initiator_code: 0
      )

    assert_pattern do
      response => CloudpaymentsRuby::Models::Payments::TokenAuthResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: CloudpaymentsRuby::Transaction | nil
      }
    end
  end

  def test_charge_required_params
    skip("Prism tests are disabled")

    response =
      @cloudpayments.payments.tokens.charge(
        account_id: "AccountId",
        amount: 0,
        token: "Token",
        tr_initiator_code: 0
      )

    assert_pattern do
      response => CloudpaymentsRuby::Models::Payments::TokenChargeResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: CloudpaymentsRuby::Transaction | nil
      }
    end
  end
end
