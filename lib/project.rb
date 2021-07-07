class Project

    attr_reader :title 
    
        def initialize(title)
            @title = title
        end

        def add_backer(backer)
            ProjectBacker.new(self, backer)
        end

        def backers
            matching_backers = ProjectBacker.all.select do |bk|
                bk.project == self
            end
            matching_backers.collect do |match|
                match.backer
            end
        end
    
    
 end