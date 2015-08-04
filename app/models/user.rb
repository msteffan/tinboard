class User < ActiveRecord::Base
    validates :username, presence: true, uniqueness: true
    # validates :password_digest, presence: true
    has_secure_password

    has_many :articles, :through => :likes
    has_many :likes

    def likes_article?(article)
        like = Like.find_by(user_id: self.id, article_id: article.id)
    end

end
