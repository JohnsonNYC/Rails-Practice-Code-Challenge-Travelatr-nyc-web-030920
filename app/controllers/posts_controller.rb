class PostsController < ApplicationController

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:id])
        @post.save

        flash[:messages] = @post.errors.full_messages
        byebug
        if @post.valid? 
        redirect_to post_path(@post)
        else
        redirect_to new_post_path
        end
    end

    def edit

    end

    private
    def post_params
        params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
    end
    
end
