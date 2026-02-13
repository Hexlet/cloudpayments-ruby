# frozen_string_literal: true

require_relative "../test_helper"

class CloudpaymentsRuby::Test::Resources::OrdersTest < CloudpaymentsRuby::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.orders.create(amount: 0, description: "Description")

    assert_pattern do
      response => CloudpaymentsRuby::Models::OrderCreateResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: CloudpaymentsRuby::Models::OrderCreateResponse::Model | nil
      }
    end
  end

  def test_cancel_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.orders.cancel(id: "Id")

    assert_pattern do
      response => CloudpaymentsRuby::Models::OrderCancelResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end
end
