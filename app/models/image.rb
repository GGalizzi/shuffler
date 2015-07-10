class Image < ActiveRecord::Base
  has_attached_file :content, styles: { small: "230x230>" }
  validates_attachment_content_type :content, :content_type => /\Aimage\/.*\Z/

  def from_url(url)
    content = URI.parse(url)
  end
end
