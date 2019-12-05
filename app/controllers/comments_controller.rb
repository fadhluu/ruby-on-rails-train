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
    @comment = Comment.find_by_id(params[:id])
  end

  def create
    @article = Article.find(params[:article_id])
    @article.comment.create(params_comment)
    redirect_to article_path(@article.id)
  end

  private

  def params_comment
    params.require(:comment).permit(:article_id, :content)
  end
end
