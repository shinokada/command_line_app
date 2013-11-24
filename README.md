# Command line app

## Usage

### app.rb

    # 1. 
    $ ruby app.rb oui
    # 2. 
    $ ruby app.rb list_recipes --format oneline
    # or
    $ ruby app.rb list_recipes --format "oneline"
    # or
    $ ruby app.rb list_recipes --format="oneline"

    # 3.
    $ ruby app.rb list_recipes --format="oneline" --no-show-time

### app1a.rb

Addition to app.rb
    
    # 4. uby app1a.rb list_recipes --genre French --format oneline --no-show-time

### app2.rb

    # 1. 
    $ ruby app2.rb recipes add # this will give an error

    # 2. 
    $ ruby app2.rb recipes add --title="Steak" --cooking-time="10 min" --description="Good ol' steak"


### app3.rb

    # 1. 
    $ ruby app3.rb recipes list

    # 2. This will show help message for recipes.
    $ ruby app3.rb recipes

### app4.rb

    # 1. To display help
    $ ruby app4.rb recipes

    # 2.
    $ ruby app4.rb recipes add -c="10 min" -t "Steak" -d "Good ol' steak."
 
