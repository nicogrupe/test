package projecttracker

class Project {

    String name
    String description
    Date dueDate
    String toString(){
        "${name}"
    }

    static belongsTo = [owner : EndUser]
    static hasMany = [tasks : Task]

    static constraints = {
        name(blank: false, unique: true)
        description()
        dueDate(min: new Date())
    }
}
