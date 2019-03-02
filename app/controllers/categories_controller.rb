class CategoriesController < ApplicationController
	def show
		@category = Category.find(params[:id]).name
		@blog = Blog.where(category_id: params[:id]).page(params[:page]).reverse_order
	end
end
