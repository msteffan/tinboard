# Tinboard

Tinboard is a news app for the time-conscious reader. Upon logging into Tinboard, readers will be able to sort and select content by length and the time it takes to read a story. 

# User Stories

1. As a user, I want to create an account on Tinboard.
2. As a user, I want to log in and out of my account on Tinboard so that I can end my session when I'm done reading.
3. As a user, I want to be able to update my account information.
4. As a user, I want to be able to delete my account if I don't find Tinboard valuable (but that won't happen!)
5. As a user, I want to see a list or index previews of content based on my time selection, so that I can pick a topic/story that interests me.
6. As a user, I want to click on an article to load the entire article, so that I can read it.
7. As a user, I want the option to like stories and add them to my profile's "reading list," so that I can save them and finish reading later.
8. As a user, I want to be able to remove "liked" stories from my reading list after I have read them, so that my reading list stays up to date. 

# ERD
![alt tag](https://raw.githubusercontent.com/msteffan/tinboard/master/tinboard_erd.JPG)

# DB & Models Structure

class User 

- has_many :articles, :through => :likes

- has_many :likes



User attributes:

- name

- password

////////////////////////////////////////////////    
class Article 

- has_many :likes



Article attributes

  - title

  - author

  - publication

  - text

////////////////////////////////////////////////    
class Like 

- belongs_to :user

- belongs_to :article



Like attributes

- user_id

- article_id
  
