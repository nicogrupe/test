package projecttracker

class EndUserController {

    def scaffold = true

    def index() {
        def endUserList = new EndUser().list()
        [endUserList: endUserList]
    }
}
