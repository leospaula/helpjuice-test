class ArticlesController < ApplicationController

  def index
    if params[:query].present?
      @articles = Article.search params[:query]
      SearchLogService.new(params[:query], @articles.count, request.remote_ip)
    else
      @articles = Article.all
    end
  end

  def autocomplete
    render json: Article.search(params[:query], match: :word_start, limit: 10).map do |book|
      { title: book.title, value: book.id }
    end
  end
end
