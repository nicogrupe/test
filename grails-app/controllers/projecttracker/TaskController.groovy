package projecttracker

class TaskController {

    def scaffold = true

    def index() {
        def allTask = Task.list()
        [allTask: allTask]
    }
}
