//
//  main.swift
//  lab4
//
//  Created by helpdesk on 3/20/19.
//  Copyright © 2019 patlooft. All rights reserved.
//

import Foundation

var tlist: TaskList;
tlist = TaskList()
var one = Task();
var two = Task();
print("Trying to add two of the same object");
var uno = tlist.add(task: one);
var dos = tlist.add(task: two);
print("Above line should return that the items already in the list\nUno = \(uno) \ndos = \(dos)")

tlist = taskGen(size: 5);

print("Just created the list with 5 items.")



static func taskGen(size: Int) -> TaskList{
    var tlist: TaskList;
    tlist = TaskList()
    
    var count: Int = 0;
    var txt = "test";
    var dat = NSDate();
    var com = false;
    
    while(count < size){
        var t: Task;
        if(count % 2 == 0){
            com = true;
            t = Task(text: txt, dueDate: dat, priority: Priority.low, completed: com)
        }
        else{
            t = Task(text: txt, dueDate: dat, priority: Priority.high, completed: com);
        }
        
        //condition if the jawn fails
        if(!tlist.add(task: t)){
            print("Failed to add task");
        }
    }
    return tlist;
}
