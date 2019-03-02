class Blog < ApplicationRecord
	attachment :image
	validates :title, :body, :image, presence: true
	belongs_to :category
	is_impressionable counter_cache: true

	def self.search(search)
      if search
        Blog.where(['body LIKE ? OR title LIKE ?', "%#{search}%", "%#{search}%"])
      else
        Blog.all
      end
    end
end
