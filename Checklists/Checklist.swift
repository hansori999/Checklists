//
//  Checklist.swift
//  Checklists
//
//  Created by Myoung-Wan Koo on 06/04/2019.
//  Copyright © 2019 Myoung-Wan Koo. All rights reserved.
//

import UIKit

class Checklist: NSObject {
    var name=""
    /* each Checklist object has Checklist item */
    var items = [ChecklistItem]()
    init(name: String) {
        self.name = name
        super.init()
    }
}
