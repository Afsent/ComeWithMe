class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    commentable = commentable_type.constantize.find(commentable_id)
    @comment = Comment.build_from(commentable, current_user.id, body)

    respond_to do |format|
      if @comment.save
        flash[:success] = "Комментарий отправлен!"
        make_child_comment
        format.html {redirect_back(fallback_location: root_path)}
      else
        flash[:error] = "Ошибка отправки комментария!"
        format.html {redirect_back(fallback_location: root_path)}
      end
    end
  end

  def destroy
    @comment.destroy
    logger.debug 'Место разрушено'
    flash[:notice] = "Место успешно удалено!"
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :comment_id)
  end

  def commentable_type
    comment_params[:commentable_type]
  end

  def commentable_id
    comment_params[:commentable_id]
  end

  def comment_id
    comment_params[:comment_id]
  end

  def body
    comment_params[:body]
  end

  def make_child_comment
    return "" if comment_id.blank?

    parent_comment = Comment.find comment_id
    @comment.move_to_child_of(parent_comment)
  end

end
