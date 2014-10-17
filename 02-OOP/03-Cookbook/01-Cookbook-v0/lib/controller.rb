class Controller

attr_reader :list, :create, :remove_recipe, :router, :recipe
	def initialize(cookbook)
		@router = router
		@cookbook = cookbook
		@recipes = []
		@recipe = recipe
	end

	def list
		@recipes = []
		@router = @controller.list
	end

	def create
		new_recipe = Recipe.new(:name, :description)
		@cookbook.add_recipe(recipe)
	end

	def destroy(index)
		@cookbook.remove(index)
	end

end