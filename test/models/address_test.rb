require "test_helper"

class AddressTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "get address from map using zipcode" do
    address = Address.new({'zipcode': '95014'})
    assert address
    assert_equal('95014', address.zipcode)
    assert_equal('95014', address.one_line)
    assert(address.has_zipcode?)
  end

  test "get address from empty map" do
    address = Address.new({})
    assert address
    assert_nil(address.zipcode)
    assert_equal('', address.one_line)
    assert_not(address.is_valid?)
  end
end

