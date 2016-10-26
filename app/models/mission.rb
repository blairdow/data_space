class Mission < ActiveRecord::Base
    validates :name, presence: true
    validates :name, uniqueness: { case_sensitive: false }
    
    belongs_to :program
    belongs_to :space_craft
    has_and_belongs_to_many :space_travelers
    #has_one :space_traveler => :foreign_key :commander
#    belongs_to :space_traveler, foreign_key: "commander"
    #add column to model w commander id?
end
