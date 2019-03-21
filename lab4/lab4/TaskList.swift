//
//  TaskList.swift
//  lab4
//
//  Created by helpdesk on 3/20/19.
//  Copyright © 2019 patlooft. All rights reserved.
//

import Foundation

class TaskList{
    private var count: Int;
    
    init(){
        self.count = 0;
    }
    
    /*convenience init(){
        self.init();
    }*/
    
    func completeTasks() -> [Any]{
        //returns a NSArray containing all tasks which are marked as complete
        var temp: Task;
        return temp;
    }
    
    func incompleteTasks() -> [Any]{
        //returns an NSArray containing all tasks which are marked as complete
        var temp: Task;
        return temp;
    }
    
    func allTasks() -> [Any]{
        //returns an NSArray containing all tasks;
        var temp: Task;
        return temp;
    }
    
    func pastDueTasks() -> [Any]{
        var temp: Task;
        return temp;
    }
    
    /*
    //returns an NSArray containing all tasks with a priority matching the specified Priority
     func tasks(p: Priority)-> [Any]{
        
    }*/
    
    func add(task: Task){
        //this method should add the specific
    }
    
    func removeAllTasks(){
        //should remove all tasks from the lists
    }
    
    func remove(task: Task) -> Bool{
        //this method should remove the specified task from the list. If a task exists in the list where all properties match the specified task, then the method should return yes and remove the item from the list. If no matching task found, then nothing should be done and the method should return no
    }
    
    func RemoveCompletedTasks(){
        //this method should remove all tasks that are marked complete from the list
    
    }
}
