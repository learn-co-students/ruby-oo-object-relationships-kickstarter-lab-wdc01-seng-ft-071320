class Project
attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    

    def backers
        joint_record = ProjectBacker.all.select {|single_pb| single_pb.project == self}
        joint_record.map {|match| match.backer}
    end


end