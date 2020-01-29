class PostsController < ApplicationController
	before_action :set_post, only: [:show,:update,:destroy, :show_tags, :link_tag, :unlink_tag, :replace_tags]
	before_action :set_tag, only: [:unlink_tag, :link_tag]


	#Posts.join(:comments).All Select todos os posts com seus comentários usando JOIN

	#GET / & /posts Politics
	def index
		@per_page = request.headers["perPage"]
		@page = request.headers["page"]
		@posts = Post.all
		@posts = @posts.paginate(page:@page, per_page: @per_page)

		@posts = @posts.where(title: request.headers["title"]) if request.headers["title"]
		@posts = @posts.where(description: request.headers["description"]) if request.headers["description"]
		@posts = @posts.joins(:comments).where('comments.text' => "#{request.headers["comment"]}") if request.headers["comment"]
		@posts = @posts.joins(:tags).where('tags.name = ?',request.headers["tag"]) if request.headers["tag"]
		post_count = @posts.size
		render json: {posts: @posts.list, post_count: post_count}
	end

	#POST /posts
	def create
		@post = Post.new(post_params)
		if @post.save
			render json: @post.index_info, status: :created
		else
			render json: @post.errors, status: :unprocessable_entity
		end
	end

	#GET /posts/:id
	def show
		render json: @post.index_info
	end

	#PATCH/PUT /posts/:id
	def update
		if @post.update post_params
			render json: @post.index_info, status: :ok
		else
			render json: @post.errors, status: :unprocessable_entity
		end
	end

	#DELETE /posts/:id
	def destroy
		@post.destroy
		head :no_content
	end

	#POST /posts/:id/tags/
	def link_tag
		@post.tags.push @tag
		render json: @post.tags, status: :ok
	end

	#GET /posts/:id/tags
	def show_tags
		render json: @post.tags
	end

	#DELETE /posts/:id/tags
	def unlink_tag
		@post.tags.delete @tag
		head :no_content
	end

	#PUT /posts/:id/tags
	def replace_tags
		@post.tags.delete_all
		@tag_ids = tag_params[:tag_ids]
		@tag_ids.each do |id|
			tag = Tag.find id
			@post.tags.push tag if tag
		end
		render json: @post.tags
	end

	private
	def post_params
		params.require(:post).permit(:title,:description,:user_id,:test,:filter => [:title],:tag_ids => [], :tags => [])
	end

	def tag_params
		params.require(:post).permit(:tag_id,:tag_ids => [])
	end

	def set_post
		@post = Post.find params[:id]
	end

	def set_tag
		@tag = Tag.find tag_params[:tag_id]
	end

end