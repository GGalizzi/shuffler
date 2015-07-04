require "test_helper"

class PostTest < ActiveSupport::TestCase
  def post
    @post ||= Post.new
  end

  def test_valid
    assert post.valid?
  end

  def test_snippet
    post = Post.new(content: "word " * 250)
    assert_operator post.snippet.split.length, :<, 45O
  end
end
