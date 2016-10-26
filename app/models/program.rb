class Program < ActiveRecord::Base
    validates :name, presence: true
    
    belongs_to :space_agency
    has_many :missions
end
