//
//  DatabaseManager.swift
//  RealmFileSyncCheck
//
//  Created by Fahim Rahman on 18/11/21.
//

import Foundation
import RealmSwift

class DatabaseManager: Object {
    @objc dynamic var name = ""
    @objc dynamic var password = ""
    @objc dynamic var creation_time = Date()
}
