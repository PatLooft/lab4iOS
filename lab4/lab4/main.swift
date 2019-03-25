//
//  main.swift
//  lab4
//
//  Created by helpdesk on 3/20/19.
//  Copyright © 2019 patlooft. All rights reserved.
//

import Foundation

func taskGen(size: Int) -> TaskList{
    var tlist: TaskList;
    
    tlist = TaskList();
    
    
    
    var count: Int = 0;
    var txt = "test";
    var dat = Date();
    var com = false;
    var str: String;
    str = "";
    while(count < size){
        var t: Task;
        
        
        if(count % 2 == 0){
            str = "\(count)";
            com = true;
            t = Task(text: str, dueDate: dat, priority: Priority.low, completed: com)
        }
        else{
            com = false;
            t = Task(text: str, dueDate: dat, priority: Priority.high, completed: com);
        }
        //condition if the jawn fails
        if(!tlist.add(task: t)){
            print("Failed to add task");
        }
        count += 1;
    }
    return tlist;
}

var tlist: TaskList;
tlist = TaskList()
var tlist2: TaskList;
tlist2 = TaskList();

var one = Task(text: "one", dueDate: Date(), priority: Priority.low, completed: true);
var two = Task(text: "one", dueDate: Date(), priority: Priority.low, completed: true);

tlist2.add(task: one);


print("Trying to add two of the same object");
var uno = tlist.add(task: one);
var dos = tlist.add(task: two);
print("\nShould be true: Uno = \(uno) \nShould be false: dos = \(dos)")
var on = Task();
on.toString();

tlist = taskGen(size: 10);

print("Just created the list with 5 items.");
print("");

tlist.toString();

print("COMPLETES");
var a = tlist.completeTasks();
for b in a{
    b.toString();
}

print("INCOMPLETES");
var c = tlist.incompleteTasks();
for d in c{
    d.toString();
}


print("ALL");
var q = tlist.allTasks();
tlist.toString()

print("LOW PRIORITY");
var x = tlist.tasks(with: Priority.low);
for y in x{
    y.toString();
}

print("HIGH PRIORITY");
var z = tlist.tasks(with: Priority.high);
for r in z{
    r.toString();
}

print("REMOVE COMPLETED");
tlist.removeCompletedTasks();
tlist.toString();

print("REMOVE ALL")
tlist.removeAllTasks();
print("\(tlist.size())");




//DATES
let formatter = DateFormatter()
formatter.dateFormat = "yyyy/MM/dd HH:mm"
let startTime = formatter.date(from: "2014/10/08 22:31");
let endTime = formatter.date(from: "2020/10/08 22:31");
let beforeTime = formatter.date(from: "2012/10/08 22:31");
let afterTime = formatter.date(from: "2022/10/08 22:31");

var three: Task;
var four: Task;
print("=====================================================\nNEW LIST")
three = Task(text: "before", dueDate: beforeTime, priority: Priority.low, completed: false);
four = Task(text: "after", dueDate: afterTime, priority: Priority.low, completed: false);
tlist2.add(task: three);
tlist2.add(task: four);


tlist2.toString();
print("TASKS BETWEEN \(startTime!) and \(endTime!)")
var k = tlist2.tasksBetween(startDate: startTime!, endDate: endTime!);
for l in k{
    l.toString();
}
