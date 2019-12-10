# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :check_current_user, only: %i[new create edit update destroy]

  def index
    @articles = Article.all
    if @articles.any?
      @articles
    else
      flash[:error] = 'No article found'
    end
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find_by_id(params[:id])
  end

  def show
    @article = Article.find_by_id(params[:id])
    if !@article.nil?
      @article
    else
      flash[:error] = 'No article found'
    end

    @comment = Comment.new
  end

  def update
    @article = Article.find_by_id(params[:id])
    if @article.update(params_article)
      flash[:success] = 'Article was_by_find_by_id successfully updated'
      redirect_to @article
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def create
    @article = Article.new(params_article)
    if @article.save
      flash[:success] = 'Success'
      redirect_to action: 'index'
    else
      flash[:error] = 'Error'
      render 'new'
    end
  end

  def destroy
    @article = Article.find_by_id(params[:id])
    if @article.destroy
      flash[:success] = @article.title + ' Article was successfully deleted.'
      redirect_to articles_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to articles_url
    end
  end

  private

  def params_article
    params.require(:article).permit(:title, :content, :status, :user_id)
  end
end
