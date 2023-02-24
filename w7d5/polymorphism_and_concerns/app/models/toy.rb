class Toy < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness:{scope: :toyable}
    belongs_to :toyable, polymorphic: true

    
end
