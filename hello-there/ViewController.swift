//
//  ViewController.swift
//  hello-there
//
//  Created by Akalanka Perera on 2024-03-29.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var linkInput: UITextField!

    var moc: NSManagedObjectContext!

    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Util.getUserFromStore()
        if (user != nil) {
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Home") as! HomeViewController
            self.present(nextViewController, animated:true, completion:nil)
        }
    }
    
    @IBAction func onSave(_ sender: Any) {
        let link: String = linkInput.text!
        var user = Util.getUserFromStore()
        if (user == nil ) {
            user = NSEntityDescription.insertNewObject(forEntityName: "User", into: moc) as? User
        }
        user!.setValue(link, forKey: "cv_link")
        appDelegate?.saveContext()
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Home") as! HomeViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func onChange(_ sender: Any) {
        if (linkInput.text!.isEmpty) {
            saveButton.alpha = 0.5
        } else {
            saveButton.alpha = 1.0
        }
    }
}

