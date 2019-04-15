package projecttracker

class ProjectController {

    def scaffold = true

    def index ={
        //redirect(action: ruper)
        def allProjects = Project.list()
        [allProjects: allProjects]
    }
/*
    def current = {
        def allProjects = Project.list()
        [allProjects:allProjects]
    }

    def ruper ={
        def allProjects = Project.list()
        [allProjects: allProjects]
    }
*/
}
