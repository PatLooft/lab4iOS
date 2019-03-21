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
        
    }
    
    func incompleteTasks() -> [Any]{
        //returns an NSArray containing all tasks which are marked as complete
    }
    
    func allTasks() -> [Any]{
        //returns an NSArray containing all tasks;
    }
    
    func pastDueTasks() -> [Any]{
        
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
    
    func remove(task: Task){
        
    }
}
