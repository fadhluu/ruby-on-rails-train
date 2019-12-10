# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @comments = Article.find(params[:article_id]).comment
  end

  def new
    @comment = Comment.new
    @article = Article.find(params[:article_id])
  end

  def edit; end

  def show
    @comments = Article.find_by_id(params[:article_id]).comment
    @comment = @comments.find_by_id(params[:id])
    if !@comment.nil?
      @comment
    else
      flash[:error] = 'This comment is unavailable for this article'
    end
  end

  def create
    @article = Article.find(params[:article_id])
    @article.comments.create(params_comment)
    redirect_to article_path(@article.id)
  end

  private

  def params_comment
    params.require(:comment).permit(:article_id, :content, :user_id)
  end
end
