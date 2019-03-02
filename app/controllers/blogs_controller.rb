class BlogsController < ApplicationController
	impressionist :actions=> [:show]

  def new
  	@blog = Blog.new
  end

  def create
  	@blog = Blog.new(blog_params)
  if @blog.save
	redirect_to blog_path(@blog)
  else
  	render :new
  end
  end

  def show
  	@blog = Blog.find(params[:id])
  	impressionist(@blog, nil, unique: [:session_hash])
  	@blog.save
  end

  def edit
  	@blog = Blog.find(params[:id])
  end

  def update
  	@blog = Blog.find(params[:id])
  if @blog.update(blog_params)
  	redirect_to blog_path(@blog)
 else
 	render :edit
 end
  end

  def destroy
  	blog = Blog.find(params[:id])
  	blog.destroy
  	redirect_to blogs_path
  end

  def index
  	@blogs = Blog.page(params[:page]).reverse_order
  end

  def search
  	@search = Blog.search(params[:search]).page(params[:page]).reverse_order
  end

  def detailed_profile
  end


  private

  def blog_params
  	params.require(:blog).permit(:title, :category_id, :body, :image)
  end

end
