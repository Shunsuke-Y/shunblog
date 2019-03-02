class Blog < ApplicationRecord
	attachment :image
	validates :title, :category_id, :body, :image, presence: true
	belongs_to :category, optional: true
	is_impressionable counter_cache: true

	def self.search(search)
      if search
        Blog.where(['body LIKE ? OR title LIKE ?', "%#{search}%", "%#{search}%"])
      else
        Blog.all
      end
    end
end
