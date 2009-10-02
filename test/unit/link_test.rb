require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "missing fields" do
    p = Link.new
    assert !p.save
    assert p.errors.invalid?(:url)
    assert p.errors.invalid?(:title)
  end
end
