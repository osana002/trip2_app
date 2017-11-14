require 'test_helper'

class MicropostTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @micropost = @user.microposts.build(spot_name: "Example name",
                                        spot_address: "Example address",
                                        content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

  test "user id should be present" do
    @micropost.user_id = "   "
    assert_not @micropost.valid?
  end
  
  test "spot_name id should be present" do
    @micropost.spot_name = "   "
    assert_not @micropost.valid?
  end
  
  test "spot_address id should be present" do
    @micropost.spot_address = nil
    assert_not @micropost.valid?
  end

  test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end
  
  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
  
end