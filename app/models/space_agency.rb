class SpaceAgency < ActiveRecord::Base
    validates :abbreviation, uniqueness: { case_sensitive: false }
    validates :abbreviation, presence: true
    validates :name, presence: true
    validates :english_name, presence: true
    
    has_many :programs
    has_and_belongs_to_many :nations
    has_many :missions, through: :programs
    has_many :space_travelers, through: :missions
end
