class Camp < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :text
  end
end