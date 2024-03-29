//
//  ViewController.swift
//  hello-there
//
//  Created by Akalanka Perera on 2024-03-29.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var linkInput: UITextField!

    var moc: NSManagedObjectContext!

    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Util.getUserFromStore()
        if (user != nil) {
            print(8, user?.cv_link!)
        }
    }
    
    @IBAction func onSave(_ sender: Any) {
        let link: String = linkInput.text!
        var user = Util.getUserFromStore()
        if (user == nil ) {
            user = NSEntityDescription.insertNewObject(forEntityName: "User", into: moc) as! User
        }
        user!.setValue(link, forKey: "cv_link")
        appDelegate?.saveContext()
        print("saved")
    }
    
}

