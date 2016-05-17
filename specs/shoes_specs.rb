require 'minitest/autorun'
require_relative '../models/shoes'

class TestPizza < Minitest::Test

  def setup 
    options = {
      "name" => "Chris Wood",
      "address" => "Edinburgh",
      "quantity" => 1,
      "size" => 7
    }
    @shoos = Shoo.new(options)
  end

  def test_name
    assert_equal('Chris Wood', @shoos.name)
  end

  def test_address
    assert_equal('Edinburgh', @shoos.address)
  end

  def test_quantity
    assert_equal(1, @shoos.quantity)
  end

  def test_size
    assert_equal(7, @shoos.size)
  end

  


end