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

**we generally always want to do this:**
- `rails generate resource planet` when we define this it's always singular
_This added `resources :planets` into our routes.rb file!
it hasn't added anything into our PlanetsController file.**_

**Now we need to edit our migration:**
- Go into db/migrate/20160524044755_create_planets.rb
_t.string :name
t.integer :diameter
t.boolean :solid
t.integer :order
t.boolean :explored
t.boolean :rings
t.integer :moons, default: 1
t.string :image
t.string :atmosphere
t.integer :distance_from_sun_

- `rake db:migrate`

**SIDENOTE**: if we wanted to change the database:
`rails generate migration ChangeRingsToInteger` then we would make our changes in there.

**Now to connect everything.**

- app/controllers/planets_controller.rb and update:
```
class PlanetsController < ApplicationController
	def index
	end
end
```



















**************************************************
