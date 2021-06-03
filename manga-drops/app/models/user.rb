class User < ApplicationRecord
    has_many :chapters
    has_many :manga
end
