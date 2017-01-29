class ArticlesController < ApplicationController

  def index
    @articles = if params[:query].present?
      Article.search(params[:query])
    else
      Article.all
    end
  end

  def autocomplete
    render json: Article.search(params[:query], match: :word_start, limit: 10).map do |book|
      { title: book.title, value: book.id }
    end
  end
end
