require 'pry'

class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        roles_array = []
        self.characters.each do |character|
            roles_array << character.name
        end
        self.shows.each do |show|
            roles_array << show.name 
        end
        roles_array.join(' - ')
    end

end