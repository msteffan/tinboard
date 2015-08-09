# Timebox

Timebox is a news app for time-conscious readers. Upon logging into Timebox, readers will be able to sort and select content by length and the time it takes to read a story.

# Installation Instructions
- Visit the site online: https://timebox-app.herokuapp.com/
- Clone this repository to your local computer, run `bundle install`, and then `rails s ` in your CLI to access a version of the site.

# Technologies Used
Timebox is a Ruby on Rails application that uses the <a href="https://github.com/codahale/bcrypt-ruby">bcrypt</a>, <a href="https://github.com/jnunemaker/httparty">httparty</a>, and postgresql gems. Additionally, Timebox was built using the <a href="http://getskeleton.com/">Skeleton</a> CSS template, <a href="http://www.webdesigncrowd.com/scrolling-progress-bar/">Scrolling Progress Bar</a> from Web Design Crowd, and <a href="http://open-platform.theguardian.com/">The Guardian's content API</a>.

# Approach Taken

Timebox began as an idea at a hackathon early in July. The original idea, which we pitched as "a blend of Tinder and Flipboard," was called Tinboard. A few weeks later, I decided that I liked the idea so much that I would start over, re-conceptualize it, and build it myself from scratch for this project.

Because this app is so content heavy, I wanted a bare-bones back-end structure that emphasizes what's really important: the content. I started by creating an ERD of three database models and displaying the relationship between them. Then, I created my rails application, my database, and my preliminary migrations. I focused the first day of work on setting up the models and routes to get them to interact correctly. The setup of the database and the models didn't change much over the course of the week, though if I were going to do it again, I might add additional columns to the user table to collect information about reading speed, topics of interest, and publications of interest. Going forward, I would also add date-time information about the articles and when a new "like" was created.

#Unsolved Problems

First, I never figured out how to create a script or css file that applied only to one particular page. That's why the article "show" file has a massive script tag at the bottom of it. Placing that script inside the application.js file caused the rest of the site to break, so I stored it within the actual html.erb file in which I wanted it to run. That's typically been a no-no, but we never discussed how to prevent rails from compiling a js file into the rest and I couldn't find a solution online that made sense for what I was doing.

Second, while I did end up pulling in content from the Guardian's API, I never was able to store this information in my database. That's why, after a search, the Guardian content loads on the main screen rather than taking the user to the article "show" page. This is an elegant workaround to my problem, and I actually really like the way this looks and functions. However, it doesn't let the user save these articles for later, since there's no way to associate them in the database (because the article doesn't exist in the database).

If I were building this out as a product that I wanted to release publicly, I'd want to replace the seed content/lorem ipsum content with actual publications' stories that the app would pull in based on user preferences. However, not a lot of publications release full text of stories through their API (like the Guardian does) because publications want readers to be accessing the content on their sites. I'm not sure how I would construct something that scrapes article data from a publication if it isn't released through the API. If I can't do that, I'd have to rethink the structure of my app a bit, in order to let readers preview stories on my site and save the preivews/links, but access the stories on the original publications' sites.

Finally, I wanted to incorporate the Figaro gem in order to store my API key securely, but I never could get it to work even after I followed the steps in the documentation. Ultimately, I ended up taking out my API Key and replacing it with "test", which works for the purpose of having a working project but isn't the ultimate solution.
