# README

* Ruby version: 2.7.1p83

* System dependencies

  - PostgreSQL:
    - Create new Docker container:
    ` $ docker run --name onebitcode_postgres -e POSTGRES_PASSWORD=pgsqldocker -d -p 5433:5432 postgis/postgis`

    - Start Docker container:
    ` $ docker start onebitcode_postgres`

* Configuration

* Database creation
  `$ rake db:create`

* Database initialization
  `$ rake db:migrate`

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
