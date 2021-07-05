class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(a_project)
        ProjectBacker.new(a_project, self)
    end

    def backed_projects
        backed_projects  = ProjectBacker.all.select do |pb|
            pb.backer == self
        end
        backed_projects.map do |bp|
            bp.project
        end
    end
end