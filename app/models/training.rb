class Training < ApplicationRecord
    validates :name, :category_id, :user_id, :weight, :times, presence: true
    belongs_to :user
end
