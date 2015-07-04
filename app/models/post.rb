class Post < ActiveRecord::Base

  def snippet
    content.split[0..30].join(" ")
  end
  
end
