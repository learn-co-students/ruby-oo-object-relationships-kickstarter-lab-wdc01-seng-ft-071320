class ProjectBacker
    attr_reader :project, :backer
    @@all = [] #class variable

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end

    def self.all
        @@all
    end

end

