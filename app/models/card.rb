class Card < ActiveRecord::Base
  belongs_to :content, polymorphic: true
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :user

  validates :content, presence: true
end
