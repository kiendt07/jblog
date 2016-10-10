class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

end
