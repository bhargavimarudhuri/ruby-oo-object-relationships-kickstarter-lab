class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        project_backer_relationship = ProjectBacker.new(self, backer)
    end 

    def backers 
        ProjectBacker.all.select do |pbr|
            pbr.project == self
        end.collect do |pbr|
            pbr.backer
        end
    end
end