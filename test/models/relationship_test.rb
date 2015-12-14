require "test_helper"

class RelationshipTest < ActiveSupport::TestCase
  def relationship
    @relationship ||= Relationship.new(followed: users(:roro), follower: users(:two))
  end

  def test_valid
    assert relationship.valid?
  end

  def test_can_follow
    roro = users(:two)
    roro.follow users(:two)
    assert roro.following.include? users(:two)
    assert users(:two).followers.include? roro
  end

  def test_can_unfollow
    roro = users(:roro)
    martin = users(:martin)
    assert roro.following.include? martin
    roro.unfollow martin
    refute roro.following.include? martin
  end

  def can_get_following_cards
    roro = users(:roro)
    assert roro.following.respond_to? :cards
  end
end
