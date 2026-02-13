# frozen_string_literal: true

require_relative "../test_helper"

class Cloudpayments::Test::Resources::OrdersTest < Cloudpayments::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.orders.create(amount: 0, description: "Description")

    assert_pattern do
      response => Cloudpayments::Models::OrderCreateResponse
    end

    assert_pattern do
      response => {
        success: Cloudpayments::Internal::Type::Boolean,
        message: String | nil,
        model: Cloudpayments::Models::OrderCreateResponse::Model | nil
      }
    end
  end

  def test_cancel_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.orders.cancel(id: "Id")

    assert_pattern do
      response => Cloudpayments::Models::OrderCancelResponse
    end

    assert_pattern do
      response => {
        success: Cloudpayments::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end
end
