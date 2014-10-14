# Encoding: utf-8

# Créer un tableau avec tous les films, années et numéros.
# Représenter tous les films de la liste par un hash.
# Représenter un film avec son nom, son année et son nombre d'entrées.
require 'csv'

def most_successfull(number, max_year, file_name)
  # TODO: return the number most successfull movies max_year
array_movies = []
csv_options = { col_sep: ',', quote_char: '"'}
filepath = "/Users/julien/code/jpicque/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv"

	CSV.foreach(filepath, csv_options) do |row|
		array_movies << {name: row[0], year: row[1].to_i, earnings: row[2].to_i}
	end	
	array_movies = array_movies.sort {|a, b| a[:earnings] <=> b[:earnings]}
	array_movies = array_movies.select { |movie| movie[:year] < max_year }
	array_movies = array_movies[0...number]
return array_movies
end







