require 'test_helper'

class QuipTest < ActiveSupport::TestCase
  test "missing fields" do
    p = Quip.new
    assert !p.save
    assert p.errors.invalid?(:text)
  end
end
