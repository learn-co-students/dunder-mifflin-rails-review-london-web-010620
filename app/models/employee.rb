class Employee < ApplicationRecord
    belongs_to :dog

    def name
        name = self.first_name + " " + self.last_name  
        name
    end

    validates :alias, {
        uniqueness: true
    }

    validates :title, {
        uniqueness: true    
    }

    validates :first_name, {
        presence: true 
    }
 
end
