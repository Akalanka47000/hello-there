//
//  HomeViewController.swift
//  hello-there
//
//  Created by Akalanka Perera on 2024-03-29.
//

import UIKit
import CoreData
import CoreImage
import CoreImage.CIFilterBuiltins

let context = CIContext()
let filter = CIFilter.qrCodeGenerator()

class HomeViewController: UIViewController {

    @IBOutlet weak var qr: UIImageView!
    
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = Util.getUserFromStore()
        if (user != nil) {
            qr.image = generateQR(string: user!.cv_link!)
            qr.layer.magnificationFilter = CALayerContentsFilter.nearest
        }
    }
    
    private func generateQR(string: String) -> UIImage {
            let data = Data(string.utf8)
            filter.setValue(data, forKey: "inputMessage")
            if let qrCodeImage = filter.outputImage {
                if let qrCodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent) {
                    return UIImage(cgImage: qrCodeCGImage)
                }
            }
            return UIImage(systemName: "xmark") ?? UIImage()
        }
        
    @IBAction func onChangeLink(_ sender: Any) {
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Welcome") as! ViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBAction func onView(_ sender: Any) {
        let user = Util.getUserFromStore()
        if let url = URL(string: user!.cv_link!), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
}
