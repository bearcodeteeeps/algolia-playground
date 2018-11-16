### Rails docker implementation

- Rails 5.2.0
- Postgres

To get started:

1. Clone this repo into a new named folder
1. Open the folder and run `docker-compose run web rails new . --force --database=postgresql`
1. On linux run `sudo chown -R $USER:$USER .`
1. Change `database.yml` localhost to:
```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  pool: 5

development:
  <<: *default
  database: myapp_development


test:
  <<: *default
  database: myapp_test
```
1. Build the containers `docker-compose build`
1. Finally you need to create the database `docker-compose run web rake db:create
`