//
//  Task.swift
//  lab4
//
//  Created by helpdesk on 3/20/19.
//  Copyright © 2019 patlooft. All rights reserved.
//

import Foundation

class Task{
    private var text: String?;
    private var dueDate: NSDate?;
    private var priority: Priority;
    private var completed: Bool;
    
    init(){
        self.text = nil;
        self.dueDate = nil;
        self.priority = Priority.medium;
        self.completed = false;
    }
    
    public init(text: String, dueDate: NSDate?, priority: Priority, completed: Bool) {
        self.text = text;
        self.dueDate = dueDate;
        self.priority = priority;
        self.completed = completed;
    }
    
    public convenience init(text: String) {
        //Creates a new Task with the specified parameters.
        //creates a task object given only the text of the task. Sets other values to their default
        self.init(text: text, dueDate: nil, priority: Priority.medium, completed: false);
    }
    
    //\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//
    //HELPER METHODS
    
    func equals(t: Task) -> Bool{
        if(self.text == t.text &&
            (self.dueDate?.isEqual(to: t.dueDate))! &&
           self.priority == t.priority &&
            self.completed == t.completed){
            return true;
        }
        else{
            return false;
        }
    }
    
    func isComplete() -> Bool{
        return self.completed;
    }
    
    func getDate() -> NSDate{
        if let unwrapped  = self.dueDate{
            return unwrapped;
        }//returns the optional unwrapped or current day
        return NSDate();
    }
    
    func getPriority() -> Priority{
        return self.priority;
    }
    
    func toString(t: Task){
        print("TASK VALUES:\nTEXT: \(self.text)\nDATE: \(self.dueDate)\nPRIORITY: \(self.priority)\nCOMPLETED:  \(completed)");
    }
 
}//end of class Task


//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//
enum Priority {
    case low
    case medium
    case high
}
