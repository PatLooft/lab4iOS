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
    private var priority: String;//needs to be changed
    private var completed: Bool;
    
    init(){
        self.text = nil;
        self.dueDate = nil;
        self.priority = "low";
        self.completed = false;
    }
    
    init(t: String, d: NSDate, p: String, c: Bool){
        self.text = t;
        self.dueDate = d;
        self.priority = p;
        self.completed = c;
    }
    
    convenience init(){
        self.init();
    }
    
    
}
