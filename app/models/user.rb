class User < ActiveRecord::Base
    validates :username, presence: true, uniqueness: true
    # validates :password_digest, presence: true
    has_secure_password

    has_many :articles, :through => :likes
    has_many :likes
end
