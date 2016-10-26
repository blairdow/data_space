class Nation < ActiveRecord::Base
    validates :name, :country_code, presence: true
    validates :country_code, uniqueness: { case_sensitive: false }
    validates :country_code, length: { maximum: 2 }
    
    has_many :space_travelers
    has_and_belongs_to_many :space_agencies
end

