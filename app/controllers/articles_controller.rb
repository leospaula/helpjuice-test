class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  private
    def article_params
      params.fetch(:article, {})
    end
end
