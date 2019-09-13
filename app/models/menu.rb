class Menu < ApplicationRecord
    validates :name, presence: :true
    validates :user_id, presence: :true
    
    
    belongs_to :user
    has_many :trainings, through: :training_in_menus, source: :training
    has_many :training_menus, dependent: :destroy
    accepts_nested_attributes_for :training_menus
end
