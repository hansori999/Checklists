//
//  Checklist.swift
//  Checklists
//
//  Created by Myoung-Wan Koo on 06/04/2019.
//  Copyright © 2019 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class Checklist: NSObject, Codable {
    var name=""
    /* each Checklist object has Checklist item */
    var items = [ChecklistItem]()
    var iconName = "No Icon"
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    func countUncheckedItems() -> Int {
        var count = 0
        for item in items where !item.checked {
            count += 1
        }
        return count
    }

}
