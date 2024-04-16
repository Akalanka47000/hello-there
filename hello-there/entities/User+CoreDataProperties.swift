//
//  User+CoreDataProperties.swift
//  hello-there
//
//  Created by Akalanka Perera on 2024-04-16.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var cv_link: String?

}

extension User : Identifiable {

}
