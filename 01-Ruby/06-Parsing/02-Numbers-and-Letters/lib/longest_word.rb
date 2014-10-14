require 'open-uri'
require 'json'

def generate_grid(grid_size)
  # TODO: generate random grid of letters
	letter = 0
	grid = []
	while letter < grid_size
		grid << ("a".."z").to_a.sample(1)
		letter = letter + 1
	end
return grid
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result
word = attempt.split('')
result = {}
translation = {}

if word.all? { |i| grid.include? i.upcase }
	api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
	open(api_url) do |stream|
    translation = JSON.parse(stream.read)
	end
# Si la traduction ne donne rien, compléter le hash result.
		if translation["Error"]
			result[:message] = "not an english word"
			result[:score] = 0
		else
# Si la traduction trouve un mot, compléter le hash result.
			result[:message] = "well done"
			result[:translation] = translation["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
			result[:time] = (end_time - start_time).to_i
			result[:score] = attempt.length +(1/(end_time - start_time).to_i)
		end
else
# Si le mot n'est pas dans la grille, compléter le hash.
	result[:message] = "not in the grid"
	result[:score] = 0
end
return result
end
