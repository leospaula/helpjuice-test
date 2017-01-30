class SearchLogService
	def initialize(query, result, ip)	
		Search.create(
		  query: query,
		  results_count: result,
		  ip_address: ip
		)
	end
end