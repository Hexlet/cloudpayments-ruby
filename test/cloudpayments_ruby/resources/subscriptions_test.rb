# frozen_string_literal: true

require_relative "../test_helper"

class CloudpaymentsRuby::Test::Resources::SubscriptionsTest < CloudpaymentsRuby::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @cloudpayments.subscriptions.create(
        account_id: "AccountId",
        amount: 0,
        currency: "Currency",
        description: "Description",
        interval: "Interval",
        period: 0,
        require_confirmation: true,
        start_date: "2019-12-27T18:11:19.117Z",
        token: "Token"
      )

    assert_pattern do
      response => CloudpaymentsRuby::Models::SubscriptionCreateResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: CloudpaymentsRuby::Subscription | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.subscriptions.update(id: "Id")

    assert_pattern do
      response => CloudpaymentsRuby::Models::SubscriptionUpdateResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: CloudpaymentsRuby::Subscription | nil
      }
    end
  end

  def test_cancel_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.subscriptions.cancel(id: "Id")

    assert_pattern do
      response => CloudpaymentsRuby::Models::SubscriptionCancelResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end

  def test_find_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.subscriptions.find(account_id: "AccountId")

    assert_pattern do
      response => CloudpaymentsRuby::Models::SubscriptionFindResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: ^(CloudpaymentsRuby::Internal::Type::ArrayOf[CloudpaymentsRuby::Subscription]) | nil
      }
    end
  end

  def test_get_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.subscriptions.get(id: "Id")

    assert_pattern do
      response => CloudpaymentsRuby::Models::SubscriptionGetResponse
    end

    assert_pattern do
      response => {
        success: CloudpaymentsRuby::Internal::Type::Boolean,
        message: String | nil,
        model: CloudpaymentsRuby::Subscription | nil
      }
    end
  end
end
