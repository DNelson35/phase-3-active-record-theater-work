class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map(&:actor)
    end

    def locations 
        self.auditions.map(&:location)
    end

    def lead
        auditions.find_by(hired: true) rescue "no actor has been hired for this role"
    end 
    
    def understudy
        auditions.second.actor rescue "no actor has been hired for this role"
    end
end