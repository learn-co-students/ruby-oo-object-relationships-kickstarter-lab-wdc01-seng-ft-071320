class Backer

    attr_reader :name

    def initialize(name)
        @name = name

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        matching_projects = ProjectBacker.all.select do |pr|
            pr.backer == self
        end
        matching_projects.collect do |match|
            match.project
        end
    end

end