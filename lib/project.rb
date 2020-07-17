require 'pry'

class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        #returns an array of projects associated 
        #with this Backer instance
        pairs = ProjectBacker.all.select do |pair|
            pair.project == self
        end
        pairs.map do |item|
            item.backer
        end  
    end   
end