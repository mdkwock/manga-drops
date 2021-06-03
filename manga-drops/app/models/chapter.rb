class Chapter < ApplicationRecord
  belongs_to :manga
  has_many :users , through: :user_chapter_status
end
