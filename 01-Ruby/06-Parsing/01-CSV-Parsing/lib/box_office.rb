# Encoding: utf-8

# Créer un tableau avec tous les films, années et numéros.
# Représenter tous les films de la liste par un hash.
# Représenter un film avec son nom, son année et son nombre d'entrées.
require 'csv'

def most_successfull(number, max_year, file_name)
  # TODO: return the number most successfull movies max_year
movies = []
csv_options = { col_sep: ','}
filepath = "/Users/julien/code/jpicque/promo-4-challenges/01-Ruby/06-Parsing/01-CSV-Parsing/lib/movies.csv"

CSV.foreach(file_name, csv_options) do |row|
	movie = {
		:name => row[0],	
		:year => row[1].to_i,	
		:earnings => row[2].to_i		
	}
		movies << movie
		end
movies_date = []
movies.each do |movie|
	if movie[:year] < max_year
	movies_date << movie
	end
end
movies_date = movies_date.sort_by { |movie| - movie[:earnings]}
# On met un moins pour lui dire de faire dans l'ordre décroissant car sinon il fait dans l'ordre croissant.
movies_date.take(number)

end







