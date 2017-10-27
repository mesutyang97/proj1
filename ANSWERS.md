# Q0: Why is this error being thrown?
Bacause the Pokemon model has not been created

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are rendered with "A wild <%= @pokemon.name %> has appeared!" in views/home/indexhtml.erb
They all comes from seeds.rb

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It makes a patch request to update attribute of @pokemon by calling the capture method in Pokemon controller

# Question 3: What would you name your own Pokemon?
Rayquaza

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed a trainer_id into the damage function, to pass as an argument into the trainer_path

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
First, add "validates :name, presence: true, uniqueness: true" to pokemon.rb
In create method of pokemons_controller, I check if @pokemon.valid?. If that fails, errors are flashed and page is redirected back to new,html.erb.


# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
