class TagsController < ApplicationController
	before_action :set_tag, only: [:show, :update, :destroy]
	
	#GET /tags
	def index
		@tags = Tag.list
		render json: Tag.list
	end

	#GET /tags/:id
	def show
		render json: @tag, status: :ok
	end

	#POST /tags
	def create
		@tag = Tag.new tag_params
		if @tag.save
			render json: @tag, status: :created
		else
			render json: @tag.errors, status: :unprocessable_entity
		end
	end

	#PUT/PATCH /tags/:id
	def update
		if @tag.update tag_params
			render json: @tag, status: :ok
		else
			render json: @tag.errors, status: :unprocessable_entity
		end
	end

	#DELETE /tags/:id
	def destroy
		@tag.destroy
		render json: {"Message": "Delted tag #{params[:id]}"}
	end

	private
	def tag_params
		params.require(:tag).permit(:name)
	end

	def set_tag
		@tag = Tag.find params[:id]
	end

end
