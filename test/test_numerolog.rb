require 'test/unit'
require 'numerolog'

class NumerologTest < Test::Unit::TestCase
  def test_gematria
    assert_equal 1, Numerolog.gematria("numerology")
  end
end