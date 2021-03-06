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
    private var tlist = [Task]();
    
    init(){
        self.count = 0;
    }

    public func completeTasks() -> [Task] {
        //Returns an NSArray containing all Tasks which are marked completed.
        //filters the array and only returns tasks where task.complete is true
        return tlist.filter({ (task: Task) -> Bool in return task.isComplete()});
    }
    
    public func incompleteTasks() -> [Task] {
        //Returns an NSArray containing all Tasks which are not completed.
        //filters the array and only returns tasks where task.complete is false
        return tlist.filter({ (task: Task) -> Bool in return task.isComplete() == false});
    }
    public func allTasks() -> [Task] {
        //Returns an NSArrary containing all Tasks in the list.
        return tlist;
    }
    
    public func pastDueTasks() -> [Task] {
        /***Returns an NSArray consisting of classes which are past due. Past due tasks are defined as tasks which have a due date prior to
         the current day. For example, a Task with a dueDate of 5:16:00pm on 3/11/2019 is not past due until the date rolls over to
         3/12/2019.*/
        //makes use of functions at end of class
        return tlist.filter({ (task: Task) -> Bool in return Date() > task.getDate() as Date});
    }
    
    public func tasksBetween(startDate: Date, endDate: Date) -> [Task] {
        /*Returns an NSArray consisting of classes which are between the specified start and stop dates/times (inclusive on both sides).
         These between times should be treated exactly as specified — no rounding to beginning or end of day.*/
        //makes use of functions extending NSDate at end of class
        
        //this guy
        var newList = [Task]();
        for t in self.tlist{
            if(startDate < t.getDate() as Date && endDate > t.getDate() as Date){
                newList.append(t);
            }
        }
        return newList;
        //return tlist.filter({ (task: Task) -> Bool in return ( (startDate < task.getDate() as Date) && endDate > task.getDate() as Date)});
    }
    
    public func tasks(with p: Priority) -> [Task] {
        //Returns an NSArray containing all Tasks with a priority matching the specified Priority.
        return tlist.filter({ (task: Task) -> Bool in return (task.getPriority() == p)  });

    }
    
    ///left of here, trying to find a contains function for seeing if an item is an the array
    
    public func add(task: Task) -> Bool {
        /*This method should add the specified Task to the list. If a Task already exists in the list where all properties match the
         specified task, then the method should return NO and not insert anything. If no matching Task is found, the item should be
         inserted and the method should return YES.*/
        for t in self.tlist{
            if (t.equals(t: task)){
                print("Item already in the list, will not add.");
                return false;
            }
        }
        count+=1;
        print("Item not in list, adding.");
        self.tlist.append(task);
        return true;
    }
    
    public func removeAllTasks() {
        //This method should remove all Tasks from the list.
        count = 0;
        self.tlist.removeAll();
    }
    
    public func remove(task: Task) -> Bool {
        /*This method should remove the specified Task from the list. If a Task exists in the list where all properties match the
         specified task, then the method should return YES and remove the item from the list. If no matching Task is found, then nothing
         should be removed and the method should return NO.*/
        var iter: Int;
        iter = 0;
        for aTask in self.tlist{
            if(aTask.equals(t: task)){
                self.tlist.remove(at: iter);
                self.count -= 1;
                return true;
            }
            iter+=1;
        }
        return false;
    }
    
    public func removeCompletedTasks() {
        if(self.tlist.isEmpty){
            return;
        }
        var iter: Int;
        iter = 0;
        for aTask in self.tlist{
            /*if(aTask.isComplete()){
                self.tlist.remove(at: iter);
                iter -= 1;
                self.count -= 1;
            }*/
            if(aTask.isComplete() && self.remove(task: aTask) && iter > 0){
                iter -= 1;
            }
            iter+=1;
        }
    }
    //This method should remove all Tasks that are marked complete from the list
    
    public func toString(){
        for t in self.tlist{
            t.toString();
        }
    }
    
    public func size() -> Int{
        return count;
    }
    
}
//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//\\\//\\//\\//\\//\\//\\//\\//\\//
//HELPER METHODS
/*
    public func ==(lhs: NSDate, rhs: NSDate) -> Bool {
        return lhs === rhs || lhs.compare(rhs as Date) == .orderedSame
    }
    
    public func <(lhs: NSDate, rhs: NSDate) -> Bool {
        return lhs.compare(rhs as Date) == .orderedAscending
    }
    
    extension NSDate: Comparable { }*/

