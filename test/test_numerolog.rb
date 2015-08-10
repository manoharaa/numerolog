require 'test/unit'
require 'numerolog'

class NumerologTest < Test::Unit::TestCase
  def test_numerolog
    assert_equal 1, Hola.numerolog("numerology")
  end
end