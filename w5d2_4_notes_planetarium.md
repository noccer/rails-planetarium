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
- `rake db:create` [rake db:drop would have destroyed the database]

we generally always want to do this:
- `rails generate resource planet` when we define this it's always singular
This added `resources :planets` into our routes.rb file!
it hasn't added anything into our PlanetsController file.

Now we need to edit our migration:
Go into db/migrate/20160524044755_create_planets.rb
- t.string :name
- t.integer :diameter
- t.boolean :solid
- t.integer :order
- t.boolean :explored
- t.boolean :rings
- t.integer :moons, default: 1
- t.string :image
- t.string :atmosphere
- t.integer :distance_from_sun
