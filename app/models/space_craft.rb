class SpaceCraft < ActiveRecord::Base
    validates :name, presence: true
    validates :build, presence: true
    validates :payload_capacity, presence: true
    
    has_many :missions
end
