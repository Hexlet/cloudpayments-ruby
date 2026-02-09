# frozen_string_literal: true

require_relative "../../test_helper"

class Cloudpayments::Test::Resources::Store::OrdersTest < Cloudpayments::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @cloudpayments.store.orders.create

    assert_pattern do
      response => Cloudpayments::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Cloudpayments::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Cloudpayments::Order::Status | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @cloudpayments.store.orders.retrieve(0)

    assert_pattern do
      response => Cloudpayments::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: Cloudpayments::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: Cloudpayments::Order::Status | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @cloudpayments.store.orders.delete(0)

    assert_pattern do
      response => nil
    end
  end
end
