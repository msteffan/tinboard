require 'httparty'

class GuardianArticle
    API_URL = 'http://content.guardianapis.com'

    def api_search(query)
        response = HTTParty.get('http://content.guardianapis.com/search?q=&api-key=chukudfqm5367xapx5fd29yk')
        return response
    end

end
