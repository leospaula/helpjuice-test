class ArticlesController < ApplicationController

  def index
    @articles = if params[:query].present?
      Article.search(params[:query])
    else
      Article.all
    end
  end

end
