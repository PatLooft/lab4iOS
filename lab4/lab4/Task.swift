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
        //checking for text variable in tasks, safely unwrapping first
        var nilEqualNil = false;
        if case t.text = t.text{
            if case self.text = self.text{
                if(self.text != t.text){
                    return false;
                }
            }
            else{
                nilEqualNil = true;
            }
        }
        else{
            if(!nilEqualNil){
                return false;
            }
        }
        nilEqualNil = false;
        //checking for variable dueDate, after safely unwrapping
        if case t.dueDate = t.dueDate{
            if case self.dueDate = self.dueDate{
                if(self.dueDate != t.dueDate){
                    return false;
                }
            }
            else{//nil
                nilEqualNil = true;
            }
        }
        else{//nil
            if(!nilEqualNil){
                return false;
            }
        }
            
        if( self.priority != t.priority && self.completed != t.completed){
            return false;
        }
            
        return true;
    }
    /*
    func equals(t: Task) -> Bool{
        //checking if both text fields are not equal (nil == nil), and one is not nil;
        if((!((self.text?.isEmpty)! && (t.text?.isEmpty)!))){
            return false;
        }
        //checking that dates are not equal (only case of nil == nil), but if one is nil return false
        else if( !(hasSigned(signedDate: self.dueDate) && hasSigned(signedDate: t.dueDate)) && (hasSigned(signedDate: self.dueDate) || hasSigned(signedDate: t.dueDate)) ){
            return false;
        }
        //checking text is not equal
        else if( !((self.text?.isEmpty)! && (t.text?.isEmpty)!) && self.text != t.text ){
            return false;
        }
        //checking if dueDates are not equal
        else if(!((self.dueDate?.isEqual(to: t.dueDate))!)){
            return false;
        }
        //checking priorities are not equal, and completed is not equal
        else if( !(self.priority == t.priority && self.completed == t.completed))  {
            return false;
        }
        return true;
    }*/
    
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
    
    func toString(){
        //safely unwrapping text variable of task
        if let txt = self.text{
            print("TASK VALUES:\nTEXT: \(txt)");
        }
        else{
            print("TASK VALUES:\nTEXT: NIL");
        }
        if let dat = self.dueDate{
            print("DATE: \(dat)");
        }
        else{
            print("DATE: NIL");
        }
        
        print("PRIORITY: \(self.priority)\nCOMPLETED:  \(self.completed)\n");
    }
    
    
 
}//end of class Task

func hasSigned(signedDate: NSDate?) -> Bool {
    if let date = signedDate{
        return true;
    }
    else{
        return false;
    }
}


//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//
enum Priority {
    case low
    case medium
    case high
}
