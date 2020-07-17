require 'pry'

class Backer

    attr_reader :name


    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        #returns an array of projects associated 
        #with this Backer instance
        pairs = ProjectBacker.all.select do |pair|
            pair.backer == self
        end
        pairs.map do |item|
            item.project
        end  
    end
    
end