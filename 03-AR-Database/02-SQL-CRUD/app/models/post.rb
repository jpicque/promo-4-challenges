# You can use a global variable, DB, built as is:
require 'sqlite3'
# DB = SQLite3::Database.new(file)

class Post
  # TODO: implement some reader and/or writers
  attr_accessor :title, :url
  attr_reader :id, :date, :votes

  def initialize(options = {})
    # TODO: initialize instance variables from the hash options.
    @id = options[:id]
    @title = options[:title]
    @url = options[:url]
    @date = options[:date] || Time.now
    @votes = 0
  end

  def upvote
    @votes += 1
  end

  def save
    if @id.nil?
      DB.execute("INSERT INTO posts (title, url, date, votes)
      VALUES ('#{@title}', '#{@url}', #{@date.to_i}, '#{@votes}');")
      @id = DB.last_insert_row_id
    else
      DB.execute("UPDATE posts
      SET title = '#{@title}', url = '#{@url}', date = #{@date.to_i}, votes = '#{@votes}'
      WHERE id = #{@id};")
    end
  end

  def destroy
    DB.execute("DELETE FROM posts
    WHERE id = #{@id};")
  end

  def self.find(id)
    tab = DB.execute("SELECT * FROM posts WHERE id = #{id};")
    if tab.first.nil?
      nil
    else
      tab = tab.flatten
      Post.new(id: tab[0], title: tab[1], url: tab[2], votes: tab[4], date: Time.at(tab[3]))
    end
  end

  def self.all
    all_posts = DB.execute("SELECT * FROM posts")
    tab_posts = []
    all_posts.each do |x|
      tab_posts << Post.new(id: x[0], title: x[1], url: x[2], date: Time.at(x[3]), votes: x[4])
    end
    tab_posts
  end
end