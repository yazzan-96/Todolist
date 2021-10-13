enum Status : Int {
    case Complete
    case NotComplete
}
enum Importance: Int {
    case high
    case medium
    case low
}

struct TaskItem {
    var title: String
    var description: String
    var DayToFinish: String
    var Priority : Importance
    var isComplete: Status
    
}

class RemainderList {
    
    var Tasks: [TaskItem]
    
    
    init() {
        Tasks = []
        
    }
    
    func addItem(item: TaskItem) {  // if you want to add task
        Tasks.append(item)
        
    }
    
    func remove (index : Int){  // if you to remove task
        Tasks.remove(at: index)
    }
    
    func update (index : Int , Day : String){  //if you want to delay task
        Tasks [index].DayToFinish = Day
    }
    
    func printitems (){  // printing if the title is complete or not
        
        for i in Tasks {
            print(i.title," ", i.DayToFinish ," " ,i.Priority," " ,i.isComplete)
        }
    }
    
    func sortdbypriority () {                     //sorting by priority
        Tasks = Tasks.sorted { $0.Priority.rawValue < $1.Priority.rawValue }
        print()
    }
    func sortdbyisComplete () {                     //sorting by priority
        Tasks = Tasks.sorted { $0.isComplete.rawValue < $1.isComplete.rawValue }
        print()
    }
    
    
    
}

func printAllListItems(lists: RemainderList...) { // printing all tasks (outside class)
    
    for list in lists {
        print ("\n\n List Items....")
        list.printitems()
    }
}


//personal list
var Task1 = TaskItem(title: "visiting",description: "viist my freind",DayToFinish:"Thursday", Priority:.low, isComplete: .Complete)
var Task2 = TaskItem( title:"Gift", description: "reward myself", DayToFinish: "friday",Priority:.high,isComplete: .NotComplete)
var Task3 = TaskItem(title: "Travel",description: "refreshing", DayToFinish: "sunday", Priority:.medium, isComplete: .Complete)


//Work List
var Task4 = TaskItem(title:"Meeting",description:"job interview" ,DayToFinish: "Wednesday", Priority: .low, isComplete: .Complete)
var Task5 = TaskItem(title:"project",description:"finishing my project",DayToFinish:"sunday",Priority:.high,isComplete: .NotComplete)
var Task6 = TaskItem(title: "emails",description:"respond to emails",DayToFinish: "Tuesday", Priority:.medium,isComplete: .NotComplete)




var PersonalList = RemainderList()
PersonalList.addItem(item: Task1)
PersonalList.addItem(item: Task2)
PersonalList.addItem(item: Task3)
//PersonalList.printitems()





var WorkList = RemainderList()
WorkList.addItem(item: Task4)
WorkList.addItem(item: Task5)
WorkList.addItem(item: Task6)
WorkList.sortdbypriority()
WorkList.printitems()



printAllListItems(lists: PersonalList, WorkList)

