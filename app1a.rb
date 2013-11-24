require "thor"
load "recipes.rb"

class App < Thor
  desc "hello WORD", "Prints 'Hello WORD' to the screen."
  def hello word
    puts "Hello #{word}"
  end

  desc "list_recipes [KEYWORD] [OPTIONS]", "List all recipes. If a keyword is given, it filters the list based off it."
  option :format
  option :show_time, type: :boolean, default: true #--show-time --no-show-time
  option :genre
  def list_recipes keyword=nil
    recipes = RECIPES
    recipes = if options[:genre] 
                recipes.select { |recipe| recipe[:genre].downcase.include? options[:genre].downcase }
              else 
                recipes = recipes              
              end
             
    recipes_to_be_listed = if keyword.nil? then recipes
                         else recipes.select { |recipe| recipe[:title].downcase.include? keyword.downcase}
                         end

    recipes_to_be_listed.each do | recipe |
      if options[:format].nil?
        print_default recipe
      else options[:format] == "oneline"
        print_oneline recipe
      end

    end
  end	  

  private

  def print_default recipe
    puts "-------------"
    puts "Recipe: #{recipe[:title]}"
    puts "It takes: #{recipe[:cooking_time]} to cook."
    puts "The ingredients are: #{recipe[:ingredients].join(", ")}"
    puts ""
  end

  def print_oneline recipe
    if options[:show_time]
      time = "(#{recipe[:cooking_time]})"
    else
      time = ""
    end

    puts %Q{#{recipe[:title]} #{time}}
  end

end

App.start ARGV
# ARGV is for options, arguments, subcommand to be parsed in app.
















