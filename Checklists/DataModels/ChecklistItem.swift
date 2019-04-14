//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Myoung-Wan Koo on 30/03/2019.
//  Copyright © 2019 Myoung-Wan Koo. All rights reserved.
//

import Foundation

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
}
