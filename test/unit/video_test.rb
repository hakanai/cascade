require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  test "missing fields" do
    p = Video.new
    assert !p.save
    assert p.errors.invalid?(:video_site)
    assert p.errors.invalid?(:video_id)
  end

  test "invalid video site" do
    p = Video.new(:video_site => 'schmeeflix')
    assert !p.save
    assert p.errors.invalid?(:video_site)
  end
end
