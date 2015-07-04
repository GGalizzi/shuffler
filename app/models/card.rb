class Card < ActiveRecord::Base
  belongs_to :content, polymorphic: true
  has_many :taggings
  has_many :tags, through: :taggings

  validates :content, presence: true
end
