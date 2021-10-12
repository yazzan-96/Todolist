struct TaskItem {
    var title: String
    var description: String
    var dateOfFinish: String
    var time: String
    var isComplete: Bool
    
}

class RemainderList {
    
    var firstWeekTasks: [TaskItem]
    
    init() {
        firstWeekTasks = []
    }
    
    func addItem(item: TaskItem) {
        firstWeekTasks.append(item)
    }
    
    func remove (index : Int){
        firstWeekTasks.remove(at: index)
    }
    
    func update (index : Int , element : String){
        firstWeekTasks [index].dateOfFinish = element
        
    }
    func printitems (){
        for i in firstWeekTasks {
            print(i.self)
        }}
}


var Task1 = TaskItem( title: "repiar", description: "fixing may car ", dateOfFinish: "friday ", time: "8:00", isComplete: true)
var Task2 = TaskItem( title: "calling", description: "call my uncle", dateOfFinish: "today", time: "12:12", isComplete: false)
var Task3 = TaskItem(title: "Meeting", description: "job interview" , dateOfFinish: "sunday", time: "10:00 am", isComplete: false)


//print(day1.title)
//print(day2.title)

var list = RemainderList()

list.addItem(item: Task1)
list.addItem(item: Task2)
list.addItem(item: Task3)
list.addItem(item:TaskItem(title:"visiting", description: "vist my brother", dateOfFinish: "friday", time: "5:00", isComplete: false) )
list.update(index: 3, element: "sdd")
//print(list.firstWeekTasks[3])
list.remove(index: 0)

list.update(index: 1, element: "jj")
//list.printitems()
//print(Task1)
////
list.printitems()











