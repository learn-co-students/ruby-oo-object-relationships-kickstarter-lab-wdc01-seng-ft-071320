require "pry"

class Backer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
    ProjectBacker.new(project, self)
    end

    def backed_projects
        matching_record = ProjectBacker.all.select {|single_pb| single_pb.backer == self}
            matching_record.map {|match| match.project}
            
    end















end