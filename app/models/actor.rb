class Actor < ActiveRecord::Base

    has_many :characters
    has_many  :shows, through: :characters

    def full_name
        "#{self.first_name.capitalize} #{self.last_name.capitalize}"
    end

    def list_roles
        roles_array = []
        self.characters.each do |role|
            role_string = "#{role.name} - #{role.show.name}"
            roles_array << role_string
        end
        roles_array
    end


        

  
end