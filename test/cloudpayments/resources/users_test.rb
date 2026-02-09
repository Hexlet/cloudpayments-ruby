# frozen_string_literal: true

require_relative "../test_helper"

class Cloudpayments::Test::Resources::UsersTest < Cloudpayments::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @cloudpayments.users.create

    assert_pattern do
      response => Cloudpayments::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @cloudpayments.users.retrieve("username")

    assert_pattern do
      response => Cloudpayments::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @cloudpayments.users.update("username")

    assert_pattern do
      response => nil
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @cloudpayments.users.delete("username")

    assert_pattern do
      response => nil
    end
  end

  def test_create_with_list
    skip("Prism tests are disabled")

    response = @cloudpayments.users.create_with_list

    assert_pattern do
      response => Cloudpayments::User
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_login
    skip("Prism tests are disabled")

    response = @cloudpayments.users.login

    assert_pattern do
      response => String
    end
  end

  def test_logout
    skip("Prism tests are disabled")

    response = @cloudpayments.users.logout

    assert_pattern do
      response => nil
    end
  end
end
