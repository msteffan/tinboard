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

    # def length
    #     results.each do |result|
    #         @length = results['fields']['body'].length
    #         return @length
    #     end
    # end
    #
    # def body
    #     results.each do |result|
    #         @body = result['fields']['body']
    #         return @body
    #     end
    # end
    #
    # def headline
    #     results.each do |result|
    #         @headline = result['fields']['headline']
    #         return @headline
    #     end
    # end
    #
    # def byline
    #     results.each do |result|
    #         @byline = result['fields']['byline']
    #         return @byline
    #     end
    # end
    #
    # def web_url
    #     results.each do |result|
    #         @url = result['webUrl']
    #         return @url
    #     end
    # end

end
