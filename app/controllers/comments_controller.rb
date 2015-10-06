class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def edit
  end
 
  def create
    @topic = Topic.find(params[:topic_id])

    @post = @topic.posts.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to [@topic, @post], flash[:notice] = "Comment saved successfully."
    else
      redirect_to [@topic, @post], flash[:notice] = "Comment failed to save."
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

