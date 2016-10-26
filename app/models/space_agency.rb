class SpaceAgency < ActiveRecord::Base
    validates :abbreviation, uniqueness: { case_sensitive: false }
    validates :abbreviation, presence: true
    validates :name, presence: true
    validates :english_name, presence: true
    
    has_many :programs
    has_and_belongs_to_many :nations
    has_many :missions, through: :programs
    has_many :space_travelers, through: :missions
    
    after_initialize :default_values
    
    private
        def default_values
            self.budget ||= 0
#            if self.name.nil?
#               raise 'name must be set'
#            end
        end
end
