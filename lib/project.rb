class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(a_backer)
        ProjectBacker.new(self, a_backer)
    end

    def backers
        backers = ProjectBacker.all.select do |pb|
            pb.project == self
        end
        backers.map do |backer|
            backer.backer
        end
    end
end