class User < ApplicationRecord
    has_many :chapters
    has_many :manga, through :user_manga
    has_many :chapters, through :user_chapter_status
end
