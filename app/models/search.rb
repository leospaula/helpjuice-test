class Search < ApplicationRecord
	before_save :set_normalized_query


	protected
    def set_normalized_query
      self.normalized_query = query.downcase if query
    end
end
