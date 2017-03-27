# Data Visualization Challenge

#### by Ho Seok (Brandon) Oh

This application is working under Ruby on Rails framework.

Testing Link: [Testing Link]

### Must have:
- Ruby
- Rails
- PostgreSQL

### How to run:
- Clone or Download this
- Go go the folder
- Open your terminal, and type the following commands


```
$ bundle install
```

```
$ rake db:create
```

```
$ rake db:migrate
```

```
$ rails server
```

- Open your browser at http://localhost:3000/


### How to use a Docker Image:
- Built a Dokcer image and container through a Openshift Platform, and pushed it to [Docker Hub].
- To search in Docker Hub: exponentian/data-visualization

- Open your terminal, and type the following a command

```
$ docker run -p 8080:8080 exponentian/data-visualization
```

- Open your browser at http://localhost:8080/


### Structure:
- View pages: ./app/views/articles
- Controllers: ./app/controllers/articles_controller
- JS and CSS: ./app/assets/javascripts/articles.js and ./app/assets/stylesheets/
- Public data: ./public/data



[Testing Link]: <https://data-visualization-hoseokoh.herokuapp.com/>
[Docker Hub]: <https://hub.docker.com/>


Thank you very much!
