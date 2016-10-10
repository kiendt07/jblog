class CommentsController < ApplicationController
  def create
    @comment = Comment.new(params.require(:comment).permit(:content, :id, :article_id))
    respond_to do |format|
      if @comment.save
        format.html { redirect_to articles_url, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end

  end
end
