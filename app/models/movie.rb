class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        Role.create(salary: salary, character_name: character_name, movie_id: self.id, actor_id: self.id)
    end

    def all_credits
        self.roles.each do |role|
            "#{role.character_name}: Played by #{role.name}"
        end
    end

    def fire_actor(actor)
        actor.roles.map do |role|
            role.destroy
        end
    end
end