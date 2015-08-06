# Tinboard

Tinboard is a news app for time-conscious readers. Upon logging into Tinboard, readers will be able to sort and select content by length and the time it takes to read a story. 

# ERD
![alt tag](https://raw.githubusercontent.com/msteffan/tinboard/master/planning%3Awireframes/tinboard_erd.JPG)

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
  
# Mockups
Index of all articles (colored bars correspond to length of content):
![alt tag](https://raw.githubusercontent.com/msteffan/tinboard/master/planning%3Awireframes/index-view.png)

Article show page: 
![alt tag](https://raw.githubusercontent.com/msteffan/tinboard/master/planning%3Awireframes/article-show-page.png)
