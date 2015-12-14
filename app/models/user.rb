class User < ActiveRecord::Base
  has_many :decks
  has_many :cards

  has_many :active_relationships, class_name: "Relationship", foreign_key: 'follower_id', dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship", foreign_key: 'followed_id', dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def loose_cards
    cards.select{|c| c.deck.nil?}
  end

  def follow(user)
    following << user
  end

  def unfollow(user)
    following.destroy user
  end

  def following?(user)
    following.include? user
  end

  def feed
    Card.where("user_id IN (?)", following_ids)
  end
end
