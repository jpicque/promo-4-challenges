class User < ActiveRecord::Base
  has_many :posts

  def initialize(username, email)
    @username = username
    @email = email
  end
end