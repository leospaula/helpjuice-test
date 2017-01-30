# HelpJuice Article Search

### Visit the project
Link: https://shielded-dusk-79049.herokuapp.com/

### Features

* Search Articles using Elastic Search
* Autocomplete
* Save searches

### Tools

* Rails 5
* PostgreSQL
* JQuery
* Rspec
* Puma

# Development
 
### Configurations


```
$ bundle install
```

```
$ rake db:create && rake db:migrate && rake db:seed
```

```
$ rake searchkick:reindex CLASS=Articles
```

Server:

```
$ rails s
 ```