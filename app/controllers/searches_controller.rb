class SearchesController < ApplicationController
	before_action :set_time_range, only: [:overview]
	before_action :set_searches, only: [:overview]

	def overview
    @top_searches = @searches.first(5)
  end

  def stream
  end

  def recent
    @searches = Search.order("created_at desc").limit(50)
    render layout: false
  end

  def clear_stats
    Search.destroy_all
    head :no_content
  end

  protected

  def set_time_range
    @time_range = 8.weeks.ago.beginning_of_week(:sunday)..Time.now
  end
  def set_searches
  	@limit = 500
    @searches = Search.connection.select_all(Search.select("normalized_query, COUNT(*) as searches_count, AVG(results_count) as avg_results_count").where(created_at: @time_range).group("normalized_query").order("searches_count desc, normalized_query asc").limit(@limit).to_sql).to_a
  end
end
