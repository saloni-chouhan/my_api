class CommentsController < ApplicationController
	before_action :set_post
	def index
		@comments = @post.comments.all

		render json: @comments
	end

	def create
    @comment = Comment.new(comment_params)
      if @comment.save
      	render json: @comment,status: :created
      else
      	render json: @comment.errors, status: :unprocessable_entity
      end
	end

	def show
    @comment = @post.comments.find_by(params[:id])
    render json: @comment
	end

	def update
    @comment = @post.comments.find_by(params[:id])
		if @comment.update(comment_params)
			render json: @comment
    else
    	render json: @comment.errors, status: :unprocessable_entity
    end
	end

	def destroy
    @comment = @post.comments.find_by(params[:id])
		@comment.destroy
	end
    
  private
    def set_post
    	@post = Post.find(params[:post_id])
    end

    def comment_params
    	params.require(:comment).permit(:body, :post_id)
    end
end
