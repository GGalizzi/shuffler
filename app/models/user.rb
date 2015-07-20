class User < ActiveRecord::Base
  has_many :boards
  has_many :cards
  
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def loose_cards
    cards.select{|c| c.board.nil?}
  end
end
