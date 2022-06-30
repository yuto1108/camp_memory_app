class Comment < ApplicationRecord
  belongs_to :camp
  belongs_to :user

  validates :content, presence: true
end
