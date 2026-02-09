# frozen_string_literal: true

require_relative "../test_helper"

class Cloudpayments::Test::Resources::PaymentsTest < Cloudpayments::Test::ResourceTest
  def test_auth_required_params
    skip("Prism tests are disabled")

    response =
      @cloudpayments.payments.auth(
        amount: 0,
        card_cryptogram_packet: "CardCryptogramPacket",
        ip_address: "IpAddress"
      )

    assert_pattern do
      response => Cloudpayments::Models::PaymentAuthResponse
    end

    assert_pattern do
      case response
      in Cloudpayments::Models::PaymentAuthResponse::UnionMember0
      in Cloudpayments::Models::PaymentAuthResponse::UnionMember1
      end
    end
  end

  def test_charge_required_params
    skip("Prism tests are disabled")

    response =
      @cloudpayments.payments.charge(
        amount: 0,
        card_cryptogram_packet: "CardCryptogramPacket",
        ip_address: "IpAddress"
      )

    assert_pattern do
      response => Cloudpayments::Models::PaymentChargeResponse
    end

    assert_pattern do
      case response
      in Cloudpayments::Models::PaymentChargeResponse::UnionMember0
      in Cloudpayments::Models::PaymentChargeResponse::UnionMember1
      end
    end
  end

  def test_confirm_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.payments.confirm(amount: 0, transaction_id: 0)

    assert_pattern do
      response => Cloudpayments::Models::PaymentConfirmResponse
    end

    assert_pattern do
      response => {
        success: Cloudpayments::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end

  def test_post3ds_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.payments.post3ds(pa_res: "PaRes", transaction_id: 0)

    assert_pattern do
      response => Cloudpayments::Models::PaymentPost3dsResponse
    end

    assert_pattern do
      response => {
        success: Cloudpayments::Internal::Type::Boolean,
        message: String | nil,
        model: Cloudpayments::Models::PaymentPost3dsResponse::Model | nil
      }
    end
  end

  def test_refund_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.payments.refund(amount: 0, transaction_id: 0)

    assert_pattern do
      response => Cloudpayments::Models::PaymentRefundResponse
    end

    assert_pattern do
      response => {
        success: Cloudpayments::Internal::Type::Boolean,
        message: String | nil,
        model: Cloudpayments::Models::PaymentRefundResponse::Model | nil
      }
    end
  end

  def test_void_required_params
    skip("Prism tests are disabled")

    response = @cloudpayments.payments.void(transaction_id: 0)

    assert_pattern do
      response => Cloudpayments::Models::PaymentVoidResponse
    end

    assert_pattern do
      response => {
        success: Cloudpayments::Internal::Type::Boolean,
        message: String | nil
      }
    end
  end
end
