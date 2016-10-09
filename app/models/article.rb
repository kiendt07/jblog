class Article < ApplicationRecord
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

end
