class Camp < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  has_one_attached :image
  belongs_to :user
  has_many :comments, dependent: :destroy
  with_options presence: true do
    validates :name
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :text
  end

  def self.search(search)
    if search != ""
      Camp.where('name LIKE(?) OR text LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Camp.all
    end
  end
end