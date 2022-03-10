//
//  DetailViewController.swift
//  collectionview Movies
//
//  Created by TNC on 09/03/2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgImage: UIImageView!
     
    var image = UIImage()
    var name = ""
    
    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgImage.image = image
        lblName.text = name
    }
    

  

}
