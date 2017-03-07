# Data Visualization Challenge

#### by Ho Seok (Brandon) Oh

This application is working under Ruby on Rails framework.

Testing Link: [Testing Link]

### Must have:
- Ruby
- Rails
- PostgreSQL

### How to run:
1. Clone or Download this
1. Go go the folder
2. Type: bundle install
3. Type: rails server
4. Open your browser at http://localhost:3000/

### Docker Image:
- I build a Dokcer image and container through a Openshift Platform, and push it to [Docker Hub].
- To search in Docker Hub: exponentian/data-visualization
- To run: docker run exponentian/data-visualization


### Structure:
- View pages: ./app/views/articles
- Controllers: ./app/controllers/articles_controller
- JS and CSS: ./app/assets/javascripts/articles.js and ./app/assets/stylesheets/
- Public data: ./public/data



[Testing Link]: <https://data-visualization-hoseokoh.herokuapp.com/>
[Docker Hub]: <https://hub.docker.com/>