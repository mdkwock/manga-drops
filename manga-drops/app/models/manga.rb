class Manga < ApplicationRecord
  has_many :chapters
  has_many :users , through: :user_mangas
end
