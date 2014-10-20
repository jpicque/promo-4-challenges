# Encoding: utf-8
require "csv"
require_relative "controller"
require_relative "recipe"

class Cookbook
  attr_reader :recipes

  def initialize(csv_file)
    @recipes = []
    @csv_file = csv_file

    csv_options = { col_sep: ',', encoding: "utf-8" }
    CSV.foreach(csv_file, csv_options) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each { |recipe| csv << [recipe.name, recipe.description] }
    end
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    CSV.open(@csv_file, 'w') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end