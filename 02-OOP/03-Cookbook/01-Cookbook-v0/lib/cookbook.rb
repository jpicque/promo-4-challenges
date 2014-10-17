# require_relative 'recipes_csv'
require 'csv'

class Cookbook

 attr_reader :recipes

 def initialize(csv_path)
   @recipes = []
   @csv_path = csv_path
   csv_options = { col_sep: ',', quote_char: '"' }
   CSV.foreach(csv_path, csv_options) do |row|
     @recipes << Recipe.new(:name, :description)
   end
 end

 def add_recipe(recipe)
 	@recipes << recipe
    csv_options = { col_sep: ',', quote_char: '"' }
    CSV.open(@csv_path, 'a+', csv_options) do |csv|
    	csv << [recipe.name, recipe.description]
    end
 end

 def remove_recipe(index)
 		@recipes.delete_at(index)
 		@recipes

 end
end
