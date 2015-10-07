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
    @comment.user = current_user
    authorize @comment
    if @comment.save
      flash[:notice] = "Comment saved successfully."
      redirect_to [@topic, @post]
      
    else
      flash[:error] = "Comment failed to save."
      redirect_to [@topic, @post]
      
    end
  end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

