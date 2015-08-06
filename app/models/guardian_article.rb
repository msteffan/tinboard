require 'httparty'

class GuardianArticle
    API_URL = 'http://content.guardianapis.com'
    attr_reader :response, :results, :body, :sanitized_body

    def initialize (query)
        @response = HTTParty.get('http://content.guardianapis.com/search?show-fields=body%2Cbyline%2Cheadline&q=' + query + '&api-key=chukudfqm5367xapx5fd29yk')
    end

    def results
        @results = response['response']['results']
    end

    def body
        results.each do |result|
            @body = result['fields']['body']
            return @body
        end
    end

    # def sanitize_body
    #     @sanitized_body = sanitize(body, :tags=>[])
    #     return @sanitized_body
    # end

    def headline
        results.each do |result|
            @headline = result['fields']['headline']
            return @headline
        end
    end

    def byline
        results.each do |result|
            @byline = result['fields']['byline']
            return @byline
        end
    end

    def web_url
        results.each do |result|
            @url = result['webUrl']
            return @url
        end
    end

    def length_class
        if body.length <= 400
            html_class = "twoMinutes"
        elsif body.length <= 800
            html_class = "fourMinutes"
        elsif body.length <= 1200
            html_class = "sixMinutes"
        else body.length > 1201
           html_class = "tenMinutes"
        end

        return html_class
    end

end
