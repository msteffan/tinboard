require 'httparty'

class GuardianArticle
    API_URL = 'http://content.guardianapis.com'
    attr_reader :response, :results, :length

    def initialize (query)
        @response = HTTParty.get('http://content.guardianapis.com/search?show-fields=body%2Cbyline%2Cheadline&q=' + query + '&api-key=chukudfqm5367xapx5fd29yk')
    end

    def results
        @results = response['response']['results']
    end


end
