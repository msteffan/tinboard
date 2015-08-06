module ApplicationHelper

    def most_read?(article)
        numLikes = Like.all.count.to_f
        articleLikes = article.likes.count.to_f
        percentLikes = articleLikes / numLikes
        if  percentLikes > 0.1
            most_read_class = "mostRead"
        end
        return most_read_class
    end

end
