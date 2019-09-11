class ItemInMenu < ApplicationRecord
    
    belongs_to :menu
    belongs_to :training
end
