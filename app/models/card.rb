class Card < ActiveRecord::Base
  belongs_to :content, polymorphic: true

  validates :content, presence: true
end
