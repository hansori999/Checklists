//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Myoung-Wan Koo on 30/03/2019.
//  Copyright © 2019 Myoung-Wan Koo. All rights reserved.
//

import Foundation
import UserNotifications

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    
    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1
    
    override init() {
        super.init()
        itemID = DataModel.nextChecklistItemID()
    }

    /* For toggling */
    func toggleChecked() {
        checked = !checked
    }
    
    func scheduleNotification() {
        if shouldRemind && dueDate > Date() {
            
            let content = UNMutableNotificationContent()
            content.title = "Reminder:"
            content.body = text
            content.sound = UNNotificationSound.default
            
            let calendar = Calendar(identifier: .gregorian)
            let components = calendar.dateComponents([.month, .day, .hour, .minute], from: dueDate)
            
            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
            
            let request = UNNotificationRequest(identifier: "\(itemID)", content: content, trigger: trigger)
            
            let center = UNUserNotificationCenter.current()
            center.add(request)
            
            print("Scheduled: \(request) for itemID: \(itemID)")    }

    }
}
