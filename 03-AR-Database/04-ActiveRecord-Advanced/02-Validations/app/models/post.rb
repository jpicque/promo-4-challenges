class Post < ActiveRecord::Base
  belongs_to :user
  # TODO: Add some validation
  validates :name, :url, :user, presence: true
  validates :name, length: { minimum: 5 }
  validates :name.downcase, uniqueness: { case_sensitive: false }
  validates :url, format: { with: /\Ahttps?\:\/\/(?:www\.|)?\w+\.\w{2,4}(?:\/\w+)?/, message: "invalid url" }
end