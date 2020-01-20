class CommentsController < ApplicationController
	before_action :set_post, except: [:link_comments]
	before_action :set_comment, only: [:update,:destroy,:show,:link_comments]

	#GET /posts/:post_id/comments
	def index
		render json: @post.comments.order("updated_at desc"), status: :ok
	end

	#POST /posts/:post_id/comments
	def create
		@comment = @post.comments.new(comment_params)
		if @comment.save
			render json: @comment, status: :created
		else
			render json: @comment.errors, status: :unprocessable_entity
		end
	end

	#GET /posts/:post_id/comments/:id
	def show
		render json: @comment, status: :ok
	end

	#DELETE /posts/:post_id/comments/:id
	def destroy
		@comment.destroy 
		render json: {"Message": "Comment #{params[:id]} deleted"}
	end

	#PUT/PATCH /posts/:post_id/comments/:id
	def update
		if @comment.update comment_params
			render json: @comment, status: :updated
		else
			render json: @comment.errors, status: :unprocessable_entity
		end
	end

	#POST /comments/:id
	#:id referencia ao id do FILHO
	#:comment_id referencia ao id do PAI
	def link_comments
		#@comment = Comment.find params[:id]
		@comment.update comment_id: comment_params[:comment_id]
		#@comment.save
	end
	
	private
	def comment_params
		params.require(:comment).permit(:text,:comment_id,:user_id)
	end
	
	def set_post
		@post = Post.find params[:post_id]
	end

	def set_comment
		@comment = Comment.find params[:id]
	end
end