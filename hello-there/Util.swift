//
//  Util.swift
//  hello-there
//
//  Created by Akalanka Perera on 2024-03-29.
//

import Foundation
import UIKit
import CoreData

class Util {

    static var moc: NSManagedObjectContext!

    static let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    static func getUserFromStore () -> User? {
        do {
            moc = appDelegate?.persistentContainer.viewContext
            let records = try moc.fetch(User.fetchRequest())
            if (!records.isEmpty) {
               return records[0]
            }
        } catch {
            print("some error occurred")
        }
        return nil
    }
}

