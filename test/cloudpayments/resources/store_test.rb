# frozen_string_literal: true

require_relative "../test_helper"

class Cloudpayments::Test::Resources::StoreTest < Cloudpayments::Test::ResourceTest
  def test_list_inventory
    skip("Prism tests are disabled")

    response = @cloudpayments.store.list_inventory

    assert_pattern do
      response => ^(Cloudpayments::Internal::Type::HashOf[Integer])
    end
  end
end
