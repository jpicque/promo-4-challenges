require_relative "../views/post_view.rb"

class PostsController
  def initialize
    @view = PostView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    @view.index(Post.all)
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    post_title = @view.ask_for_title
    post_url = @view.ask_for_url
    post = Post.new({
      title: post.title,
      url: post.url,
      votes: 0
      })
    post.save
    @view.print_successfully_created
  end

  def update(id)
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    @ask_for_id
    typed_id = gets.chomp
    post = Post.find(id)
    post.title = @view.ask_for_title
    post.url = @view.ask_for_url
    post.save
    @view.print_successfully_updated(post)
  end

  def destroy(id)
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    index
    @view.ask_for_id
    typed_id = gets.chomp
    post = Post.find(typed_id)
    post.destroy
    @view.print_successfully_destroyed

  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    @view.ask_for_id
    tyoed_id = gets.chomp
    post = Post.new(typed_id)
    post.votes += 1
    post.save
  end
end