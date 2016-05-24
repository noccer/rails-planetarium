# Steps taken

- rails new
- git init
- git add
- git commit -m "initial commit"
- git remote ...
- git push
- database.yml >> adapter: postgresql >> database: planetarium

- edit Gemfile
- delete out test and production lines in database.yml
- rake db:create [rake db:drop would have destroyed the database]

- rails generate resource planet <<<when we define this it's always singular


**************
