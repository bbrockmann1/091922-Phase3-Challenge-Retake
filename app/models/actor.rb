class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        self.roles.sum(:salary)
    end

    def blockbusters
        self.movies.each do |movie|
            movie.box_office_earnings > 50000000
        end
    end

    def self.most_successful
        Actor.all.max_by do |actor|
            actor.roles.length
        end
    end
end


