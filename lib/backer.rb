class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end
    
    def back_project(project)
        project_backer_relationship = ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select do |pbr|
            pbr.backer == self
        end.collect do |pbr|
            pbr.project
        end
    end 
end 